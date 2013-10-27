local MenuButton = Button:extend{
    onNew = function(self)
        self.label = Text:new{text = self.text, font = 32, align="center", wordWrap=false};
        self.width, self.height = self.label:getSize()
        self.height = 37
        self.x = self.x-self.width/2
        self.y = self.y - self.height/2
    end;
    onMouseEnter = function(self)
        self.label.tint = {0,0,0,0}
    end;
    onMouseExit = function(self)
        self.label.tint = {1,1,1,1}
    end;
}

MainMenu = View:extend {
    onNew = function(self)
        self:add(Button:new{
            width=50, height=50;
            onMouseDown = function()
                the.app.view = LevelView:new{levelName = "maps/level3.lua"}
            end;
        })
        self:add(MenuButton:new {
            text = "Play", x = 400, y = 100;
            onMouseDown = function(self)
                the.app.view = LevelView:new{levelName = "maps/level1.lua"}
            end;
        })
        self:add(MenuButton:new {
            text = "Effects volume", x = 400, y = 240;
            onMouseDown = function(self)
                the.app.view = LevelView:new{levelName = "maps/level1.lua"}
            end;
        })
        self:add(MenuButton:new {
            text = "Music volume", x = 400, y = 300;
            onMouseDown = function()
                the.app.view = LevelView:new{levelName = "maps/level1.lua"}
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
