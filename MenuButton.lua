MenuButton = Button:extend{
    onNew = function(self)
        self.label = Text:new{
            text = self.text, font = 32, align="center", wordWrap=false
        };
        self.width, self.height = self.label:getSize()
        self.height = 37
        self.x = self.x-self.width/2
        self.y = self.y - self.height/2
    end;
    onMouseEnter = function(self)
        self.label.originalTint = self.label.tint or {1,1,1,1}
        self.label.tint = {0,0,0,0}
    end;
    onMouseExit = function(self)
        self.label.tint = self.label.originalTint
    end;
}
