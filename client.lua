local hurt = false
local playerPed
local prevHealth

Citizen.CreateThread(function()
    while true do
        playerPed = GetPlayerPed(-1)
        prevHealth = GetEntityHealth(playerPed)
        Citizen.Wait(1000) -- Wait 1000ms = 1 second before checking again
        local curHealth = GetEntityHealth(playerPed)
        if curHealth <= 129 then
            if not hurt or curHealth ~= prevHealth then
                setHurt()
            end
        elseif hurt and curHealth > 130 then
            setNotHurt()
        end
        prevHealth = curHealth
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if hurt then
            DisableControlAction(0, 21, true) -- Disable running action
        end
    end
end)

function setHurt()
    hurt = true
    RequestAnimSet("move_m@injured")
    SetPedMovementClipset(playerPed, "move_m@injured", true)
end

function setNotHurt()
    hurt = false
    ResetPedMovementClipset(playerPed)
    ResetPedWeaponMovementClipset(playerPed)
    ResetPedStrafeClipset(playerPed)
end
