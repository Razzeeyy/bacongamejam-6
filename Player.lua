local onFoot = {
    init = function(self)
        local unit = the.view.map.spriteWidth
        self.gravity = unit * 9.8
        self.accel = unit * 7
        self.drag.x = unit * 8
        self.speed = unit * 5
        self.jump = -(self.gravity*0.5)
        self.jumpTime = 0.3

        self.onGround = false;
        self.velocity.y = 0;
        self.acceleration.y = self.gravity
        self.airTime = 0;
    end;
    update = function(self, dt)
        local k = the.keys
        self.acceleration.x = 0
        local playMoveSound = false
        if k:pressed(self.keyLeft) then
            self.acceleration.x = -self.accel
            playMoveSound = true
        end
        if k:pressed(self.keyRight) then
            self.acceleration.x = self.accel
            playMoveSound = true
        end
        if self.velocity.x > self.speed then
            self.velocity.x = self.speed
        elseif self.velocity.x < -self.speed then
            self.velocity.x = -self.speed
        end
        
        local moveSound = the.app.meta.movementSound
        if playMoveSound then
            moveSound:play()
        else
            if not moveSound:isStopped() then
                moveSound:stop()
            end
        end

        if k:pressed(self.keyJump) then
            if self.onGround or (self.airTime < self.jumpTime) then 
                self.velocity.y = self.jump
                self.onGround = false
                if self.airTime == 0 then
                    local sound = the.app.meta.jumpSound
                    if not sound:isStopped() then
                        sound:stop()
                    end
                    sound:play()
                end
            end
        end
        if not self.onGround then
            self.airTime = self.airTime + dt
        end
    end;
    collide = function(self, other, xOverlap, yOverlap)
        if not other:instanceOf(Tile) then
            return
        end
        --figure out direction hints
        local vertical = xOverlap > yOverlap -- means up or down is applicable
        local horizontal = xOverlap < yOverlap --means left or right is applicable
        local left = (other.x - self.x) + other.width
        local right = (self.x + self.width) - other.x
        local up = (other.y - self.y) + other.height
        local down = (self.y + self.height) - other.y
        if left < right then
            left = true
            right = false
        else
            right = true
            left = false
        end
        if up < down then
            up = true
            down = false
        else
            down = true
            up = false
        end

        if other:instanceOf(Map) then
            return
        end

        if not horizontal and not vertical then
            --when overlapping areas are equal
            --consider it the vertical case
            --(top or bottom collision resolution)
            vertical = true
        end

        if horizontal and not vertical then
            --reset horizontal speed only if we surely hit a wall
            if yOverlap > the.view.map.spriteHeight/4 then
                self.acceleration.x = 0
                self.velocity.x = 0
            end
        end

        if vertical and not horizontal then
            if down then
                self.onGround = true
                self.acceleration.y = self.gravity
                self.velocity.y = 0
                self.airTime = 0
            else
                self.onGround = false
                if self.velocity.y < 0 then
                    self.velocity.y = 0
                end
                self.acceleration.y = self.gravity
                self.airTime = self.jumpTime
            end
        end

        other:displace(self, left and "right" or "left", up and "down" or "up")
    end;
}

Player = Colorizer:extend{
    image = "images/player.png";
    sequences = {
        ["stand"] = {
            name = "stand";
            frames = {1, 2, 3, 4, 5};
            fps = 2;
            loops = true;
        }
    };
    glowMask = "images/playermask.png";
    glowAlpha = 200;
    colors = {
        color.none;
        color.none;
        color.none;
        color.none;
        color.none;
        color.none;
        color.none;
    };
    setBehavior = function(self, behavior)
        self.behavior = behavior
        return behavior.init(self)
    end;
    behave = function(self, name, ...)
        return self.behavior[name](self, ...)
    end;
    onNew = function(self)
        self:play("stand")
        self:applyGlowMask()
        self.keyLeft = "left"
        self.keyRight = "right"
        self.keyJump = "up"
        self.keyUse = "down"

        local unit = the.view.map.spriteWidth
        self.width = unit/2
        self.height = unit
        
        --remember position where spawned
        self.spawnPoint = {x = self.x, y = self.y}
     --[[   
        self.colors = {
          {255, 0, 0}; --red
          {255, 125, 0}; --orange
          {255, 255, 0}; --yellow
          {0, 255, 0}; --green
          {0, 125, 255}; --light blue 
          {0, 0, 255}; --blue
          {255, 0, 255}; --violet
        }
--]]
        self:setBehavior(onFoot)
    end;
    onUpdate = function(self, dt)
        -- if player fell out of the map bring him back to spawn position
        if self.y > the.view.map.height+the.view.map.spriteHeight*3 then
            self.x = self.spawnPoint.x
            self.y = self.spawnPoint.y
        end
        local clamp = function(n, min, max)
            if n > max then
                return max
            elseif n < min then
                return min
            end
            return n
        end
        return self:behave("update", dt)
    end;
    onCollide = function(self, other, xOverlap, yOverlap)
        return self:behave("collide", other, xOverlap, yOverlap)
    end
}
