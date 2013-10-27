Injector = Colorizer:extend {
    width = 16;
    height = 32;
    image = "images/injector.png";
    sequences = {
        ["stand"] = {
            name = "stand";
            frames = {1, 2, 3, 4, 5};
            fps = 2;
            loops = true;
        }
    };
    glowAlpha = 200;

    onNew = function(self)
        self:play("stand")
        self.frameIndex = math.random(5)
    end;

    onCollide = function(self, other, xOverlap, yOverlap)
        if other:instanceOf(Player) then
            local oc = other.colors 
            local sc = self.colors
            local injected = false
            for  i=1, 7 do
                local sci = sc[i]
                if sci ~= color.none then
                    local oci = oc[i]
                    if sci ~= oci then
                        oc[i] = sci
                        injected = true
                    end
                end
            end
            if injected then
                local interactSound = the.app.meta.interactionSound
                if  not interactSound:isStopped() then
                    interactSound:stop()
                end
                interactSound:play()
            end
        end
    end;
}
