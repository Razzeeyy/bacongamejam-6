MainMenu = View:extend {
    onNew = function(self)
        the.app.meta.bgMusic:play()
        self:add(Button:new{
            width=50, height=50;
            onMouseDown = function()
                the.app.view = EndGameView:new()
            end;
        })
        self:add(MenuButton:new {
            text = "Play", x = 400, y = 100;
            onMouseDown = function(self)
                the.app.view = LevelView:new{levelName = "maps/level1.lua"}
            end;
        })
        self:add(MenuButton:new {
            text = "Effects Volume", x = 400, y = 240;
            onMouseDown = function(_)
                the.app.view = VolumeMenu:new{
                    title="Effects Volume";
                    parent = self;
                    getVolume = the.app.getSfxVolume;
                    setVolume = the.app.setSfxVolume;}
            end;
        })
        self:add(MenuButton:new {
            text = "Music Volume", x = 400, y = 300;
            onMouseDown = function(_)
                the.app.view = VolumeMenu:new{
                    title="Music Volume";
                    parent = self;
                    getVolume = the.app.getBgmVolume;
                    setVolume = the.app.setBgmVolume;}
            end;
        })
        self:add(MenuButton:new {
            text = "Exit", x = 400, y = 400;
            onMouseDown = function()
                the.app:quit()
            end;
        })
    end;
}
