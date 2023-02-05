-- -- Blip Creator  -------------------------------------------------------------------------
-- Get blip hashes here https://github.com/Wollffus/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips
if Trigger.BLIPS then
local blips = {

    -- add  blips to map
    { name = 'Farming Market',  sprite = 819673798,    x = 1420.48, y = 379.59,    z = 90.35 },
    { name = 'Mexico Bridge',  sprite =  -428972082,    x = -6320.78, y = -4276.67,    z = 29.11 },
    { name = 'Armadillo Saloon',  sprite =  819673798,    x = -3704.92, y = -2594.41,    z = -13.29 },
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        local blip = N_0x554d9d53f696d002(1664425300, info.x, info.y, info.z)
        SetBlipSprite(blip, info.sprite, 1)
        SetBlipScale(blip, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, info.name)
    end
end)
end
