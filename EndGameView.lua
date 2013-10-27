EndGameView = View:extend{
    onNew = function(self)
       local title = Text:new{
           text = "Thanks for playing!";
           font = 48;
           align = "center";
           wordWrap = false;
       }
       title:centerAround(400, 240);
       self:add(title)
    end;
}
