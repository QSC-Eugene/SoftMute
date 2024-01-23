GR.gain.EventHandler = function(ctrl)
  GR.mute.Boolean = math.floor(GR.gain.Value) <= -100 and GR["to.b"].Boolean
end

Controls.mute.EventHandler = function(ctrl)
  if ctrl.Boolean then
    GR["to.b"].Boolean = true
  else
    GR["to.b"].Boolean = false
    GR.mute.Boolean = false
  end
end

Controls.InstantMute.EventHandler = function()
  GR["time.b"].Value = .1
  GR["to.b"].Boolean = true
  GR.mute.Boolean = true
  Controls.mute.Boolean = true
  Timer.CallAfter(
    function()
      GR["time.b"].Value = Controls.OffTime.Value
    end,
    .1
  )
end

Controls.InstantUnmute.EventHandler = function()
  GR["time.a"].Value = .1
  GR["to.a"].Boolean = true
  GR.mute.Boolean = false
  Controls.mute.Boolean = false
  Timer.CallAfter(
    function()
      GR["time.a"].Value = Controls.OnTime.Value
    end,
    .1
  )
end

Controls.OnTime.EventHandler = function(ctrl)
  GR["time.a"].Value = ctrl.Value
end

Controls.OffTime.EventHandler = function(ctrl)
  GR["time.b"].Value = ctrl.Value
end

function Init()
  print("v"..PluginInfo.BuildVersion)
  Controls.mute.Boolean = GR["to.b"].Boolean
  GR["time.a"].Value = Controls.OnTime.Value
  GR["time.b"].Value = Controls.OffTime.Value
  GR["release"].Value = .1
  GR["gain.a"].Value = 0
  GR["gain.b"].Value = -100
end

Init()
