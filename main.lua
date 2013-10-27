require "zoetrope"
require "LevelView"
require "color"
require "Colorizer"
require "Player"
require "Injector"
require "Pass"
require "Req"
require "End"
require "MenuButton"
require "MainMenu"
require "VolumeMenu"
require "EndGameView"

SHADERS_AVAILABLE = false
BGM_VOLUME = 0.5
SFX_VOLUME = 0.5
--TODO:
--make GUI
--make use of volume variables in settings



function HSL(h, s, l, a)
    if s<=0 then return l,l,l,a end
    h, s, l = h/256*6, s/255, l/255
    local c = (1-math.abs(2*l-1))*s
    local x = (1-math.abs(h%2-1))*c
    local m,r,g,b = (l-.5*c), 0,0,0
    if h < 1     then r,g,b = c,x,0
    elseif h < 2 then r,g,b = x,c,0
    elseif h < 3 then r,g,b = 0,c,x
    elseif h < 4 then r,g,b = 0,x,c
    elseif h < 5 then r,g,b = x,0,c
    else              r,g,b = c,0,x
    end return (r+m)*255,(g+m)*255,(b+m)*255,a
end



the.app = App:new
{
    name = "Colors Of A Rainbow",
    icon = "images/icon.png",
    fps = 60,
    timeScale = 1.0,
    deactivateOnBlur = false,

    hue = 0;
    hueChangeSpeed = 25;
    saturation = 50;
    luminosity = 75;

    getSfxVolume = function()
        return SFX_VOLUME
    end;
    getBgmVolume = function()
        return BGM_VOLUME
    end;

    onNew = function(self)
        --TODO: more sounds
        self.meta.interactionSound = love.audio.newSource("sounds/interaction.ogg", "static")
        self.meta.movementSound = love.audio.newSource("sounds/movement.ogg", "static")
        self.meta.jumpSound = love.audio.newSource("sounds/jump1.ogg", "static")

        
        self.setSfxVolume = function(_, v)
            SFX_VOLUME = v
            the.app.meta.interactionSound:setVolumeLimits(SFX_VOLUME, SFX_VOLUME)
            the.app.meta.movementSound:setVolumeLimits(SFX_VOLUME, SFX_VOLUME)
            the.app.meta.jumpSound:setVolumeLimits(SFX_VOLUME, SFX_VOLUME)
        end
        self:setSfxVolume(SFX_VOLUME)

        self.meta.bgMusic = love.audio.newSource("sounds/45.mp3", "static")
        self.meta.bgMusic:setLooping(true)
        self.meta.bgMusicEndRound = love.audio.newSource("sounds/1.mp3", "static")
        self.meta.bgMusicPunk = love.audio.newSource("sounds/Punk.mp3", "static")
        
        self.setBgmVolume = function(_, v)
            BGM_VOLUME = v
            the.app.meta.bgMusic:setVolumeLimits(BGM_VOLUME, BGM_VOLUME)
            the.app.meta.bgMusicEndRound:setVolumeLimits(BGM_VOLUME, BGM_VOLUME)
            the.app.meta.bgMusicPunk:setVolumeLimits(BGM_VOLUME, BGM_VOLUME)
        end

        --TODO: FIXME: fix the shader based mask drifting and enable this
        --SHADERS_AVAILABLE = love.graphics.isSupported("pixeleffect")
    end;
    onRun = function(self)
        self.view = MainMenu:new()
        --self.view = LevelView:new{levelName = "maps/level1.lua"}
    end;
    onUpdate = function(self, dt)
        love.graphics.setBackgroundColor({HSL(self.hue, self.saturation, self.luminosity, 255)})
        self.hue = self.hue + dt*self.hueChangeSpeed
        if self.hue > 255 then
            self.hue = 0
        end
    end;
}
