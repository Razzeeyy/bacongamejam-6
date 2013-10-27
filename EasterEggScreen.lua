EasterEggScreen = View:extend{
    onNew = function(self)
        local title = Text:new{
            text = "It's RAINingBOWS";
            font = 48;
            align = "center";
            wordWrap = false;
        }
        title:centerAround(400, 100)
        self:add(title)
        self:add(MenuButton:new{
            text = "back";
            x=400; y = 450;
            onMouseDown = function()
                the.app.view = self.parent:new()
            end;
        })
    end;
    timeSinceLast = 0;
    onUpdate = function(self, dt)
        if self.timeSinceLast > 1 then
            self.timeSinceLast = 0
            local name = "images/bow"..tostring(math.random(5))..".png"
            local sp = Tile:new{
                image = name;
                solid = false;
                x = math.random(780); y = 0;
                onUpdate = function(me, dt)
                    if me.y > 480 then
                        self:remove(me)
                    end
                end;
            }
            sp.velocity.y = math.random(100, 200)
            self:add(sp)
        end
        self.timeSinceLast = self.timeSinceLast + dt
    end
}
