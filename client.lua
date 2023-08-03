local hurt = false
local screenEffectActive = false
local playerPed
local prevHealth
local screenEffect = "BeastLaunch"

Citizen.CreateThread(function()
    while true do
        playerPed = GetPlayerPed(-1)
        prevHealth = GetEntityHealth(playerPed)
        Citizen.Wait(1000)
        local curHealth = GetEntityHealth(playerPed)
        if curHealth <= 130 then
            if not hurt or curHealth ~= prevHealth then
                setHurt()
            end
        elseif hurt and curHealth > 130 then
            setNotHurt()
        end
        if curHealth <= 120 and not screenEffectActive then
            StartScreenEffect(screenEffect, 0, true)
            screenEffectActive = true
        elseif screenEffectActive and curHealth > 110 then
            StopScreenEffect(screenEffect)
            screenEffectActive = false
        end
        prevHealth = curHealth
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if hurt then
            DisableControlAction(0, 21, true) -- disable run
            DisableControlAction(0, 22, true) -- disable jump
        end
    end
end)
