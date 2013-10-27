local PARENT = Animation

Colorizer = PARENT:extend{
    glowAlpha = 255;
    colors = {
            color.none;
            color.none;
            color.none;
            color.none;
            color.none;
            color.none;
            color.none;
    };
    color = "none";
    new = function(self, obj)
        local o = PARENT.new(self, obj)
 
        self.mask_effect = SHADERS_AVAILABLE and love.graphics.newPixelEffect [[
        vec4 effect ( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {
          // a discarded fragment will fail the stencil test.
          if (Texel(texture, texture_coords).rgb == vec3(0.0))
             discard;
          return vec4(1.0);
         }
        ]];

        if o.glowMask then
             o._maskSprite = love.graphics.newImage(o.glowMask)
        end
        if o.color then
            local c = color[o.color]
            if c then
                if c == color.none then
                    o.color = {255, 255, 255, 255}
                else
                    o.color = {c[1], c[2], c[3], 200}
                end
            end
        end
        for i=1, 7 do
            local colorname = o[tostring(i)]
            if colorname then
                o.colors[i] = color[colorname]
            end
        end

        return o
    end;
    applyGlowMask = function(self)
        if self.glowMask then
            self._maskSprite = love.graphics.newImage(self.glowMask)
        end
    end;
    drawGlow = function(self, x, y)
        x = math.floor(x or self.x)
        y = math.floor(y or self.y)
        if self.glowAlpha <= 0 then return end
        local originalColor = {love.graphics.getColor()}

        local h = self.height
        local w = h
        x = x-self.width/2

        local function stencil()
            love.graphics.circle("fill", x+w/2, y+h/2, h/2, 32)
        end
        if SHADERS_AVAILABLE and self._maskSprite then
            w = self.width
            x = math.floor(self.x or x)
            stencil = function()
                --TODO: FIXME: shader based stencil gains offest to the right if x > 389
                --maybe try sending the.view.translate to the shader to offset the texture_coords?
                love.graphics.setPixelEffect(self.mask_effect)
                love.graphics.draw(self._maskSprite, x, y)
                love.graphics.setPixelEffect()
            end
        end

        love.graphics.setStencil(stencil)

        local segmentHeight = h/7
        for i = 1, 7 do
            if not self.colors[i] then
                error "color missed"
            end
            local col = self.colors[i]

            local glowAlpha = self.glowAlpha
            if col == color.none then
                col = {0,0,0}
                glowAlpha = 0
            end
            love.graphics.setColor(col[1], col[2], col[3], glowAlpha)
            love.graphics.rectangle("fill", x, y+segmentHeight*(i-1), w, segmentHeight)
        end
        
        love.graphics.setStencil()
        love.graphics.setColor(originalColor)

    end;
    draw = function(self, x, y)
        if SHADERS_AVAILABLE then
            local originalColor = {love.graphics.getColor()}
            if self.color then
                love.graphics.setColor(self.color)
            end
            PARENT.draw(self, x, y)
            love.graphics.setColor(originalColor)
            self:drawGlow(x, y)
        else
            
            self:drawGlow(x, y)
            local originalColor = {love.graphics.getColor()}
            if self.color then
                love.graphics.setColor(self.color)
            end
            PARENT.draw(self, x, y)
            love.graphics.setColor(originalColor)
        end
    end;
}
