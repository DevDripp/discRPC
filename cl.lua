--Creating thread
Citizen.CreateThread(function()
    --Getting Asset Values
    local servername = GetPlayerName(PlayerId())
    local serverid = GetPlayerServerId(PlayerId())
    local streetname = GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))))
    local vehiclename = GetLabelText(GetDisplayNameFromVehiclemodel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
    local kmh = math.floor(GetEntitySpeed(GetVehiclePedIsUsing(PlayerPedId())))*3.6
    local NumberOfPlayers = 0
    
    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then 
            NumberOfPlayers = NumberOfPlayers + 1
        end
    end 
    
    --Game Status
    SetDiscordAppId(put)
    --Larger Icon
    SetDiscordRichPresenceAsset(assetName)
    SetDiscordRichPresenceAssetText('DevDripp Discord')
    --Smaller Icon
    SetDiscordRichPresenceAssetSmall(assetName)
    SetDiscordRichPresenceAssetSmallText('No Public Access')
    --Buttons
    SetDiscordRichPresenceAction(0, 'DevDripps Discord, Discord.gg/example')
    SetDiscordRichPresenceAction(1, 'Dripps Github', 'https://github.com/DevDripp')
    --Loop
    SetRichPresence('Players: ' .. NumberofPlayers)
    Wait(5*100)
    SetRichPresence('ID ' .. serverid)
    Wait(5*100)
    SetRichPresence('Name: ' .. servername)
    Wait(5*100)
        --Updating every 1000ms
            Citizen.Wait(1000)
        end
    end)