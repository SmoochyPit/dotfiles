-- Monitors

hl.monitor({
  output   = "desc:LG Display 0x03E5", -- Refract integrated display
  mode     = "highrr",
  position = "auto",
  scale    = 1.0,
})

hl.monitor({
  output   = "HDMI-A-2", -- Refract HDMI port
  mode     = "preferred",
  position = "auto",
  scale    = 1.6,
})

hl.monitor({
  output   = "desc:Microstep MSI MAG342CQR DB6H252200502", -- Desktop monitor
  mode     = "3440x1440@144",
  position = "auto",
  scale    = 1.25,
})
