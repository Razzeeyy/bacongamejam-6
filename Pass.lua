Pass = Colorizer:extend {
    width = 16;
    height = 32;
    image = "images/door.png";
    colorkey = "none";
    sequences = {
        ["stand"] = {
            name = "stand";
            frames = {1, 2, 3, 4, 5};
            fps = 3;
            loops = true;
        }
    };
    glowAlpha = 200;

    onNew = function(self)
        self:play("stand")
        self.frameIndex = math.random(5)
        local c = color[self.colorkey]
        if c ~= color.empty then
            self.color = {c[1], c[2], c[3], 200}
        end
    end;

    onCollide = function(self, other, xOverlap, yOverlap)
        if other:instanceOf(Player) then
            local oc = other.colors
            local key = color[self.colorkey]
            if key == color.empty then
                return
            end
            for i=1, 7 do
                if oc[i] == key then
                    return
                end
            end

            if yOverlap > xOverlap then
                other.velocity.x = 0
                other.acceleration.x = 0
            else
                other.velocity.y = 0
            end
            self:displace(other)
        end
    end;
}
