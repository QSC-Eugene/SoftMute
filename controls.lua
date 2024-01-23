-- table.insert(ctrls,{Name = "code",ControlType = "Text",PinStyle = "Input",Count = 1})

table.insert(
  ctrls,
  {
    Name = "mute",
    ControlType = "Button",
    ButtonType = "Toggle",
    UserPin = true,
    PinStyle = "Both",
  }
)
table.insert(
  ctrls,
  {
    Name = "InstantMute",
    ControlType = "Button",
    ButtonType = "Trigger",
    UserPin = true,
    PinStyle = "Input",
  }
)
table.insert(
  ctrls,
  {
    Name = "InstantUnmute",
    ControlType = "Button",
    ButtonType = "Trigger",
    UserPin = true,
    PinStyle = "Input",
  }
)
table.insert(
  ctrls,
  {
    Name = "OnTime",
    ControlType = "Knob",
    ControlUnit = "Float",
    UserPin = true,
    PinStyle = "Both",
    DefaultValue = 3,
    Min = .1,
    Max = 100,
  }
)
table.insert(
  ctrls,
  {
    Name = "OffTime",
    ControlType = "Knob",
    ControlUnit = "Float",
    UserPin = true,
    PinStyle = "Both",
    DefaultValue = 3,
    Min = .1,
    Max = 100,
  }
)