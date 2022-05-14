
RegisterNetEvent('tomato_identity:open_menu')
AddEventHandler('tomato_identity:open_menu', function()
  SendNUIMessage({
      action="open"
  })
  SetNuiFocus(true,true)
end)

RegisterNUICallback("tomato_identity:get_input",function(data)
    local sid=GetPlayerServerId(PlayerId())
TriggerServerEvent('tomato_identity:mysql_save',sid,data)
end)


RegisterNetEvent('tomato_identity:close_menu')
AddEventHandler('tomato_identity:close_menu', function()
  SendNUIMessage({
      action="close"
  })
  SetNuiFocus(false,false)
end)