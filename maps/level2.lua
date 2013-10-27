return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 25,
  height = 32,
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
      width = 25,
      height = 32,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1,
        1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1,
        1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1,
        1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1,
        1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1,
        1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1,
        1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
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
          x = 712,
          y = 64,
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
          x = 70,
          y = 64,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["3"] = "yellow",
            ["color"] = "yellow"
          }
        },
        {
          name = "Injector",
          type = "",
          shape = "rectangle",
          x = 682,
          y = 256,
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
          x = 39,
          y = 800,
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
          x = 743,
          y = 960,
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
          x = 599,
          y = 640,
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
          x = 296,
          y = 576,
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
          x = 728,
          y = 449,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["nextlevel"] = "maps/level3.lua"
          }
        },
        {
          name = "Player",
          type = "",
          shape = "rectangle",
          x = 137,
          y = 442,
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
            ["colorkey"] = "violet"
          }
        },
        {
          name = "Pass",
          type = "",
          shape = "rectangle",
          x = 678,
          y = 448,
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
          y = 544,
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
          y = 512,
          width = 16,
          height = 32,
          visible = true,
          properties = {
            ["colorkey"] = "orange"
          }
        }
      }
    }
  }
}
