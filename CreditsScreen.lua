CreditsScreen = View:extend{
   onNew = function(self)
       local title = Text:new{
           text = "Credits";
           font = 48;
           align = "center";
           wordWrap = false;
       }
       title:centerAround(400, 80)
       self:add(title)
       local t = {
            Text:new {
               text = "programming & idea";
               font = 32;
               align = "center";
               wordWrap = false;
            };
            Text:new {
                text = "Alexey \"Razzeeyy\" Shmakov";
                font = 24;
                align = "center";
                wordWrap = false;
            };
            Text:new{
                text = "art";
                font = 32;
                align = "center";
            };
            Text:new{
                text = "Denis \"Xomak\" Khomenko";
                font = 24;
                align = "center";
                wordWrap = false;
            };
            Text:new{
                text = "sound";
                font = 32;
                align = "center";
            };
            Text:new{
                text = "Evgeny Pismenny";
                font = 24;
                align = "center";
                wordWrap = false;
            };
            Text:new{
                text = "Special Thanks To Unek";
                font = 32;
                align = "center";
                wordWrap = false;
            };
       }
       for i, v in ipairs(t) do
           self:add(v)
           v:centerAround(400, i*40+140)
       end
       self:add(MenuButton:new{
           text = "back";
           x=400; y = 450;
           onMouseDown = function()
               the.app.view = self.parent:new()
           end;
       })
   end;
}
