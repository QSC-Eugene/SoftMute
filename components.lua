local multiType = props["Type"].Value
local multiTypeIndex = 0

if multiType == "Mono" then
  multiTypeIndex = 1
elseif multiType == "Stereo" then
  multiTypeIndex = 2
elseif multiType == "Multi-channel" then
  multiTypeIndex = 3
end

table.insert(
  components,
  {
    Name = "GR",
    Type = "ramp",
    Properties = {
      ["multi_channel_type"] = multiTypeIndex,
      ["multi_channel_count"] = props["Count"].Value
    }
  }
)
