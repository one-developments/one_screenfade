local isFadeOut = false


 
RegisterNUICallback('ready', function(data, cb)
    Config.UI = Config.DefaultTheme
    SendNUIMessage({
        action = "Send_Config",
        configs = Config.UI
    })

    HideLoad(1)
    cb(1)
end)

function DisplayLoad(durations,newStylenew)
    SetNuiFocus(true,false)
    local durationMS = durations or 500
    local newStyle = newStylenew or false
    SendNUIMessage({
        action = 'show',
        duration = durationMS,
        style = newStyle
    })
end

function HideLoad(durations)
    SetNuiFocus(false,false)
    local durationMS = durations or 500
    SendNUIMessage({
        action = 'hide',
        duration = durationMS
    })
end

exports('DisplayLoad', function(duration,newlogo)
  DisplayLoad(tonumber(duration),newlogo)
end)

exports('HideLoad', function(duration)
  HideLoad(tonumber(duration))
end)







