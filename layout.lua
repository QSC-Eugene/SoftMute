-- layout["code"] = {PrettyName = "Code",Style = "None"}

layout["mute"] = {
  PrettyName = "Mute",
  Style = "Button",
  ButtonType = "Toggle",
  Size = {80,40},
  Position = {4,4},
  Color = {255,0,0},
  Legend = "Mute",
}
layout["InstantMute"] = {
  PrettyName = "Instant Mute",
  Style = "Button",
  ButtonType = "Trigger",
  Size = {80,40},
  Position = {4,48},
  Legend = "Instant Mute",
}
layout["InstantUnmute"] = {
  PrettyName = "Instant Unmute",
  Style = "Button",
  ButtonType = "Trigger",
  Size = {80,40},
  Position = {4,92},
  Legend = "Instant Unmute",
}
table.insert(
  graphics,
  {
    Type = "Label",
    Text = "Unmute Time",
    Size = {80,20},
    Position = {4,136},
    VTextAlign = "Bottom",
  }
)
layout["OnTime"] = {
  PrettyName = "On Time",
  Style = "Text",
  Size = {80,20},
  Position = {4,156},
}
table.insert(
  graphics,
  {
    Type = "Label",
    Text = "Mute Time",
    Size = {80,20},
    Position = {4,180},
    VTextAlign = "Bottom",
  }
)
layout["OffTime"] = {
  PrettyName = "Off Time",
  Style = "Text",
  Size = {80,20},
  Position = {4,200},
}