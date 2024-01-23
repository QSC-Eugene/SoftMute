if props["Type"].Value == "Mono" then
  table.insert(
    pins,
    {
      Name = "Input",
      Direction = "input"
    }
  )
  table.insert(
    pins,
    {
      Name = "Output",
      Direction = "output"
    }
  )
elseif props["Type"].Value == "Stereo" then 
  table.insert(
    pins,
    {
      Name = "Input Left",
      Direction = "input"
    }
  )
  table.insert(
    pins,
    {
      Name = "Input Right",
      Direction = "input"
    }
  )
  table.insert(
    pins,
    {
      Name = "Output Left",
      Direction = "output"
    }
  )
  table.insert(
    pins,
    {
      Name = "Output Right",
      Direction = "output"
    }
  )
elseif props["Type"].Value == "Multi-channel" then
  for x = 1, props["Count"].Value do
    table.insert(
      pins,
      {
        Name = "Input Channel " .. x,
        Direction = "input"
      }
    )
    table.insert(
      pins,
      {
        Name = "Output Channel " .. x,
        Direction = "output"
      }
    )
  end
end