LevelView = View:extend {
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
