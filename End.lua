End = Colorizer:extend {
    width = 16;
    height = 32;
    image = "images/door.png";
    sequences = {
        ["stand"] = {
            name = "stand";
            frames = {1, 2, 3, 4, 5};
            fps = 2;
            loops = true;
        }
    };
    glowAlpha = 255;
    --player should match to this colors to end the level successfully
    colors = {
        color.red;
        color.orange;
        color.yellow;
        color.green;
        color.light_blue;
        color.blue;
        color.violet;
    };
    --should hold the string with a path to the file of next level to load
    --override in the tiled
    nextlevel = nil;

    onNew = function(self)
        self:play("stand")
        self.frameIndex = math.random(5)
    end;

    onCollide = function(self, other, xOverlap, yOverlap)
        if other:instanceOf(Player) then
            local oc = other.colors 
            local sc = self.colors
            for  i=1, 7 do
                if oc[i] ~= sc[i] then
                    return
                end
            end
            
            the.app.meta.nextlevel = self.nextlevel
            the.app.view:levelCompleted()
        end
    end;
}

