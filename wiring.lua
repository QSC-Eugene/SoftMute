if props["Type"].Value == "Mono" then
  table.insert(
    wiring,
    {
      "Input",
      "GR Input"
    }
  )
  table.insert(
    wiring,
    {
      "GR Output",
      "Output"
    }
  )
elseif props["Type"].Value == "Stereo" then 
  table.insert(
    wiring,
    {
      "Input Left",
      "GR Input Left"
    }
  )
  table.insert(
    wiring,
    {
      "Input Right",
      "GR Input Right"
    }
  )
  table.insert(
    wiring,
    {
      "GR Output Left",
      "Output Left"
    }
  )
  table.insert(
    wiring,
    {
      "GR Output Right",
      "Output Right"
    }
  )
elseif props["Type"].Value == "Multi-channel" then
  for x = 1, props["Count"].Value do
    table.insert(
      wiring,
      {
        "Input Channel " .. x,
        "GR Input Channel " .. x
      }
    )
    table.insert(
      wiring,
      {
        "GR Output Channel " .. x,
        "Output Channel " .. x
      }
    )
  end
end