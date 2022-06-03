Citizen.CreateThread(function()

    while true do
        Citizen.Wait(Config.Refresh)
        for k, playerid in pairs(GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(playerid)
            local name = xPlayer.getName()
            local job = xPlayer.job.name
            if job == Config.Policejob and xPlayer.getInventoryItem(Config.Item) then
                TriggerClientEvent("placeblip", playerid, name)
            end
        end
    end
    end)