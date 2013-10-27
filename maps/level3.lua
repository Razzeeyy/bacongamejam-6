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
        1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1,
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
            ["6"] = "blue",
            ["color"] = "blue"
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
            ["2"] = "orange",
            ["color"] = "orange"
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
            ["4"] = "green",
            ["color"] = "green"
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
            ["nextlevel"] = "maps/level4.lua"
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
            ["1"] = "black",
            ["2"] = "black",
            ["3"] = "black",
            ["4"] = "black",
            ["5"] = "black",
            ["6"] = "black",
            ["7"] = "black",
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
            ["colorkey"] = "violet"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 1479,
          y = 448,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "black"
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
            ["colorkey"] = "light_blue"
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
            ["colorkey"] = "orange"
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
            ["colorkey"] = "violet"
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
            ["colorkey"] = "violet"
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
            ["colorkey"] = "black"
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
            ["colorkey"] = "black"
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
            ["colorkey"] = "black"
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
            ["colorkey"] = "black"
          }
        }
      }
    }
  }
}
