local pvp = false

function setpvp(flag)
  pvp = flag
end
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if pvp then
        SetRelationshipBetweenGroups(1,PLAYER, PLAYER)
    end
  end
end)


RegisterNetEvent("pvp")
AddEventHandler("pvp", function()
    if ( pvp ) then
        SetRelationshipBetweenGroups(5, PLAYER, PLAYER)
    end
end)

RegisterCommand("pvpoff", function(_source, args, raw) --change command here
    pvp = true
    TriggerEvent("pvp")
    TriggerEvent("redemrp_notification:start", "PvP Off", 3)
end, false)

RegisterCommand("pvpon", function(_source, args, raw) --change command here
    pvp = false
    TriggerEvent("pvp")
    TriggerEvent("redemrp_notification:start", "PvP On", 3)
end, false)