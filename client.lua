AddEventHandler('showblip', function(id, name)
    local playerCoords = GetEntityCoords(id)
		
    local blip = AddBlipForCoord(playerCoords.x, playerCoords.y, playerCoords.z)
    SetBlipSprite (blip, Config.BlipID)
    SetBlipScale  (blip, 0.65)
    SetBlipDisplay(blip, 4)
    SetBlipColour (blip, Config.BlipColorID)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING') 
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip)
    local time = Config.Refresh - 100
    Citizen.Await(time)
   RemoveBlip(blip)
  end)

  AddEventHandler('removeblip', function()


  end)