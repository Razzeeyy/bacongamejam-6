Req = Colorizer:extend {
    colorkey = "none";
    glowAlpha = 0;

    onNew = function(self)
    end;

    onCollide = function(self, other, xOverlap, yOverlap)
        if other:instanceOf(Player) then
            local oc = other.colors
            local key = color[self.colorkey]

            for i=1, 7 do
                if oc[i] == key then
                    return
                end
            end
            the.app.view:restart()
        end
    end;
}
