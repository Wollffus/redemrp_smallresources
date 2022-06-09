if Trigger.FULLCORES then
    Citizen.CreateThread(function()
        while true do
            Wait(0)
            Citizen.InvokeNative(0xc6258f41d86676e0,  PlayerPedId(), 0, 100) --SetPedCoreLevel health
            Citizen.InvokeNative(0xc6258f41d86676e0,  PlayerPedId(), 1, 100) --SetPedCoreLevel stamina
            Citizen.InvokeNative(0xc6258f41d86676e0,  PlayerPedId(), 2, 100) --SetPedCoreLevel deadeye
        end
    end)
end

if Trigger.GOLDBARS then
    Citizen.CreateThread(function()
        while true do
            Wait(0)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 0, 5000.0) --outer bar gold  health
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 1, 5000.0) --outer bar gold  stamina
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 2, 5000.0) --outer bar gold  deadeye
        end
    end)
end
