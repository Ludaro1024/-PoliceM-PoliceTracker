
  TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)


RegisterNetEvent('policetracker:showblip')
AddEventHandler('policetracker:showblip', function(name, can)
  if can then
        local name = namee or 'Default Blip'
        local marker = GetEntityCoords(PlayerPedId())
        local blip = AddBlipForCoord(marker)
        SetBlipSprite (blip, Config.BlipID)
        SetBlipScale  (blip, Config.BlipSize)
        SetBlipDisplay(blip, 4)
        SetBlipColour (blip, Config.BlipColorID)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING') 
        AddTextComponentString(name)
        EndTextCommandSetBlipName(blip)
  else
    print()
RemoveBlip(blip)
  end
end)