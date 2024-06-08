Client = {}
function Client.DrawSphere(coords, radius, red, green, blue, alpha)
    DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, radius * 2.0, radius * 2.0, radius * 2.0, red, green, blue, alpha, false, true, 2, nil, nil, false)
end
function CreateProximityRange(proximityRange, coords)
    Citizen.CreateThread(function()
        local startTime = GetGameTimer()
        local markerDuration = 1000
        local playerPed = PlayerPedId()
        while (GetGameTimer() - startTime) < markerDuration do
            local playerCoords = GetEntityCoords(playerPed)
            local distance = #(playerCoords - coords)
            if distance <= proximityRange then
                Client.DrawSphere(playerCoords, proximityRange, 0, 255, 0, 100)
            end
            Wait(0)
        end
        PlaySoundFrontend(-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", true)
    end)
end
TriggerEvent("pma-voice:settingsCallback", function(voiceSettings)
    voiceModes = voiceSettings.voiceModes
end)
AddEventHandler('pma-voice:setTalkingMode', function(mode)
    CreateProximityRange(voiceModes[mode][1], GetEntityCoords(PlayerPedId()))
end)
