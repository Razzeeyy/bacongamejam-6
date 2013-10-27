VolumeMenu = View:extend{
   onNew = function(self)
       local title = Text:new{
           text = self.title;
           font = 48;
           align = "center";
           wordWrap = false;
       }
       title:centerAround(400, 80)
       self:add(title)
       self.highLight = function(self, vol)
           for i, v in pairs(self.volumes) do
               if vol == i then
                   v.label.tint = {0.5, 0.5, 0.5, 1}
                   v.label.originalTint = v.label.tint
               else
                   v.label.tint = {1,1,1,1}
                   v.label.originalTint = v.label.tint
               end
           end
       end
       self.volumes = {
           [1] = MenuButton:new{
               text = "DEAF";
               x = 400; y = 150;
               onMouseUp = function()
                   self:setVolume(1)
                   self:highLight(1)
               end
           };
           [0.75] = MenuButton:new{
               text = "Loud";
               x = 400; y = 200;
               onMouseUp = function()
                   self:setVolume(0.75)
                   self:highLight(0.75)
               end
           };
           [0.5] = MenuButton:new{
               text = "Comfortable";
               x = 400; y = 250;
               onMouseUp = function()
                   self:setVolume(0.5)
                   self:highLight(0.5)
               end
           };
           [0.25] = MenuButton:new{
               text = "Quiet";
               x = 400; y = 300;
               onMouseUp = function()
                   self:setVolume(0.25)
                   self:highLight(0.25)
               end
           };
       }
       for i, v in pairs(self.volumes) do
           self:add(v)
           if self:getVolume() == i then
               v.label.tint = {0.5, 0.5, 0.5, 1}
           end
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
