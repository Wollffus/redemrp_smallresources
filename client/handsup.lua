-- -- Hands up  -------------------------------------------------------------------------
if Trigger.HANDSUP then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            local ped = PlayerPedId()
            if (IsControlJustPressed(0,0x8CC9CD42))  then -- Press X

                if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then

                    RequestAnimDict( "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs" )

                    while ( not HasAnimDictLoaded( "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs" ) ) do
                        Citizen.Wait( 100 )
                    end

                    if IsEntityPlayingAnim(ped, "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs", "handsup_register_owner", 3) then
                        ClearPedSecondaryTask(ped)
                        ClearPedTasks(ped)
                    else
                        ClearPedTasks(ped)
                        ClearPedSecondaryTask(ped)
                        TaskPlayAnim(ped, "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs", "handsup_register_owner", 8.0, -8.0, 120000, 31, 0, true, 0, false, 0, false)
                    end
                end
            end
           if IsEntityPlayingAnim(ped, "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs", "handsup_register_owner", 3) then
                HidePedWeaponForScriptedCutscene(ped,true)
            end
        end
    end)
end
