-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}
-- UI
M.base_30 = {
  white = "{{foreground}}",
  black = "{{background}}", -- usually your theme bg
  darker_black = "{{background | darken(0.06)}}", -- 6% darker than black
  black2 = "{{background | lighten(0.06)}}", -- 6% lighter than black
  one_bg = "{{background | lighten(0.10)}}", -- 10% lighter than black
  one_bg2 = "{{background | lighten(0.16)}}", -- 6% lighter than one_bg2
  one_bg3 = "{{background | lighten(0.24)}}", -- 6% lighter than one_bg3
  grey = "{{background | lighten(0.40)}}", -- 40% lighter than black (the % here depends so choose the perfect grey!)
  grey_fg = "{{background | lighten(0.50)}}", -- 10% lighter than grey
  grey_fg2 = "{{background | lighten(0.45)}}", -- 5% lighter than grey
  light_grey = "#605f6f",
  red = "#F38BA8",
  baby_pink = "#ffa5c3",
  pink = "#F5C2E7",
  line = "{{background | lighten(0.15)}}", -- 15% lighter than black
  green = "#ABE9B3",
  vibrant_green = "#b6f4be",
  nord_blue = "#8bc2f0",
  blue = "#89B4FA",
  yellow = "#FAE3B0",
  sun = "#ffe9b6",
  purple = "#d0a9e5",
  dark_purple = "#c7a0dc",
  teal = "#B5E8E0",
  orange = "#F8BD96",
  cyan = "#89DCEB",
  statusline_bg = "#232232",
  lightbg = "#2f2e3e",
  pmenu_bg = "#ABE9B3",
  folder_bg = "#89B4FA",
  lavender = "#c7d1ff",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "{{color0}}",
  base01 = "{{color1}}",
  base02 = "{{color2}}",
  base03 = "{{color3}}",
  base04 = "{{color4}}",
  base05 = "{{color5}}",
  base06 = "{{color6}}",
  base07 = "{{color7}}",
  base08 = "{{color8}}",
  base09 = "{{color9}}",
  base0A = "{{color10}}",
  base0B = "{{color11}}",
  base0C = "{{color12}}",
  base0D = "{{color13}}",
  base0E = "{{color14}}",
  base0F = "{{color15}}"
}

-- OPTIONAL
-- overriding or adding highlights for this specific theme only 
-- defaults/treesitter is the filename i.e integration there, 

M.polish_hl = {
  defaults = {
    --[[Comment = {
      bg = "{{color5}}", -- or M.base_30.cyan
      italic = true,
    },]]--
  },

  treesitter = {
    ["@variable"] = { fg = "{{background}}" },
  },
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "wallust")

return M
