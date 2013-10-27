require "zoetrope"
require "LevelView"
require "color"
require "Colorizer"
require "Player"
require "Injector"
require "Pass"
require "End"

SHADERS_AVAILABLE = false
BGM_VOLUME = 1
SFX_VOLUME = 1
--TODO:
--make GUI
--make use of volume variables in settings


the.app = App:new
{
    name = "anew engine",
    icon = nil,
    fps = 60,
    timeScale = 1.0,
    deactivateOnBlur = false,
    onNew = function(self)
        --TODO: more sounds
        self.meta.interactionSound = love.audio.newSource("sounds/interaction.ogg", "static")
        self.meta.movementSound = love.audio.newSource("sounds/movement.ogg", "static")
        self.meta.jumpSound = love.audio.newSource("sounds/jump1.ogg", "static")
        self.meta.bgMusic = love.audio.newSource("sounds/45.mp3", "static")
        self.meta.bgMusic:setLooping(true)
        self.meta.bgMusicEndRound = love.audio.newSource("sounds/1.mp3", "static")

        --TODO: FIXME: fix the shader based mask drifting and enable this
        --SHADERS_AVAILABLE = love.graphics.isSupported("pixeleffect")
    end;
    onRun = function(self)
        self.view = LevelView:new{levelName = "maps/level1.lua"}
    end;
}
