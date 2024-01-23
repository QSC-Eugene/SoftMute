table.insert(
  props,
  {
    Name = "Type",
    Type = "enum",
    Value = "Mono",
    Choices = {"Mono", "Stereo", "Multi-channel"}
  }
)
table.insert(
  props,
  {
    Name = "Count",
    Type = "integer",
    Value = 8,
    min = 2,
    Max = 64
  }
)