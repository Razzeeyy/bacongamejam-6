local function HSL(h, s, l, a)
    if s<=0 then return l,l,l,a end
    h, s, l = h/256*6, s/255, l/255
    local c = (1-math.abs(2*l-1))*s
    local x = (1-math.abs(h%2-1))*c
    local m,r,g,b = (l-.5*c), 0,0,0
    if h < 1     then r,g,b = c,x,0
    elseif h < 2 then r,g,b = x,c,0
    elseif h < 3 then r,g,b = 0,c,x
    elseif h < 4 then r,g,b = 0,x,c
    elseif h < 5 then r,g,b = x,0,c
    else              r,g,b = c,0,x
    end return (r+m)*255,(g+m)*255,(b+m)*255,a
end

LevelView = View:extend {
    hue = 0;
    hueChangeSpeed = 25;
    saturation = 50;
    luminosity = 125;
    onNew = function(self)
        self:loadLayers(self.levelName)
        self.focus = the.player
        self:clampTo(self.map)
        self:flash({255, 255, 255}, 1)
        local bgm = the.app.meta.bgMusic
        local bgme = the.app.meta.bgMusicEndRound
        if bgm:isStopped() and bgme:isStopped() then
            bgm:play()
        end
    end;

    onUpdate = function(self, dt)
        if self.map.active then
            self.map:collide(self.objects)
        end
        if self.objects.active then
            self.objects:collide(self.objects)
        end
        local bgm = the.app.meta.bgMusic
        local bgme = the.app.meta.bgMusicEndRound
        if bgme:isStopped() then
            bgm:play()
        end

        love.graphics.setBackgroundColor({HSL(self.hue, self.saturation, self.luminosity, 255)})
        self.hue = self.hue + dt*self.hueChangeSpeed
        if self.hue > 255 then
            self.hue = 0
        end
    end;

    levelCompleted = function(self)
        self.map.active = false
        self.objects.active = false
        local promise = self:fade({255, 255, 255}, 1)
        local bgm = the.app.meta.bgMusic
        local bgme = the.app.meta.bgMusicEndRound
        if not bgm:isStopped() then
            bgm:stop()
        end
        if bgme:isStopped() then
            bgme:play()
        end
        if the.app.meta.nextlevel then
            promise:andThen(function()
                the.app.view = LevelView:new{levelName = the.app.meta.nextlevel}
            end)
            return
        end
    end;
}
