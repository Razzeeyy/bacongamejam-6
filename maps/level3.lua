return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 50,
  height = 16,
  tilewidth = 32,
  tileheight = 32,
  properties = {},
  tilesets = {
    {
      name = "tileset32",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../images/tileset32.png",
      imagewidth = 320,
      imageheight = 320,
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "map",
      x = 0,
      y = 0,
      width = 50,
      height = 16,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
      }
    },
    {
      type = "objectgroup",
      name = "objects",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 160,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["2"] = "yellow",
            ["color"] = "white"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 55,
          y = 256,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["5"] = "light_blue",
            ["color"] = "light_blue"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 52,
          y = 352,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["3"] = "yellow",
            ["color"] = "yellow"
          }
        },
        {
          name = "End",
          type = "",
          shape = "rectangle",
          x = 970,
          y = 64,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["nextlevel"] = "end"
          }
        },
        {
          name = "Player",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 433,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["1"] = "none",
            ["2"] = "none",
            ["3"] = "none",
            ["4"] = "none",
            ["5"] = "none",
            ["6"] = "none",
            ["7"] = "none",
            ["_the"] = "player"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 102,
          y = 448,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "yellow"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 101,
          y = 352,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "red"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 103,
          y = 256,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "violet"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 52,
          y = 448,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["4"] = "green",
            ["color"] = "green"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 102,
          y = 64,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "blue"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 102,
          y = 160,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "yellow"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 1479,
          y = 352,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "orange"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 1480,
          y = 256,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "red"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 1481,
          y = 160,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "green"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 1477,
          y = 64,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "green"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 55,
          y = 64,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["3"] = "red",
            ["color"] = "white"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 1527,
          y = 352,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["2"] = "orange",
            ["color"] = "orange"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 1527,
          y = 256,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["1"] = "red",
            ["color"] = "red"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 1527,
          y = 160,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["7"] = "violet",
            ["color"] = "violet"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 1527,
          y = 64,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["6"] = "blue",
            ["color"] = "blue"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 851,
          y = 96,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["1"] = "yellow",
            ["2"] = "yellow",
            ["3"] = "yellow",
            ["4"] = "yellow",
            ["5"] = "yellow",
            ["6"] = "yellow",
            ["7"] = "yellow",
            ["color"] = "white"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 711,
          y = 320,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "red"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 842,
          y = 288,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "orange"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 776,
          y = 320,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["3"] = "orange",
            ["color"] = "white"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 102,
          y = 160,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "yellow"
          }
        },
        {
          name = "Req",
          type = "",
          shape = "rectangle",
          x = 31,
          y = 319,
          width = 71,
          height = 67,
          visible = true,
          properties = {
            ["colorkey"] = "red"
          }
        }
      }
    }
  }
}
