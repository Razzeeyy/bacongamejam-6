--garbage collection settings
--tuning this can help with performance
collectgarbage("setpause", 110)
collectgarbage("setstepmul", 200)

STRICT = true
DEBUG = true --enables/disables Zoetrope's debug console
RELEASE = false --if enabled saves will go to the LOVE save directory, if t.identity is defined below

function love.conf(t)
    t.title = "Colors Of A Rainbow"    -- The title of the window the game is in (string)
    t.author = "Razzeeyy"       -- The author of the game (string)
    t.url = nil                 -- The website of the game (string)
    t.identity = "colorsofarainbow"            -- The name of the save directory (string)
    t.version = "0.8.0"         -- The LÖVE version this game was made for (string)
    t.console = false           -- Attach a console (boolean, Windows only)
    t.release = RELEASE         -- Enable release mode (boolean)
    t.screen.width = 800        -- The window width (number)
    t.screen.height = 480       -- The window height (number)
    t.screen.fullscreen = false -- Enable fullscreen (boolean)
    t.screen.vsync = true       -- Enable vertical sync (boolean)
    t.screen.fsaa = 0           -- The number of FSAA-buffers (number)
    t.modules.joystick = false   -- Enable the joystick module (boolean)
    t.modules.audio = true      -- Enable the audio module (boolean)
    t.modules.keyboard = true   -- Enable the keyboard module (boolean)
    t.modules.event = true      -- Enable the event module (boolean)
    t.modules.image = true      -- Enable the image module (boolean)
    t.modules.graphics = true   -- Enable the graphics module (boolean)
    t.modules.timer = true      -- Enable the timer module (boolean)
    t.modules.mouse = true      -- Enable the mouse module (boolean)
    t.modules.sound = true      -- Enable the sound module (boolean)
    t.modules.physics = false    -- Enable the physics module (boolean)
end

