-- -- Blip Creator  -------------------------------------------------------------------------
-- Get blip hashes here https://github.com/Wollffus/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips
if Trigger.BLIPS then
local blips =
{
-- Saloons
    { name = 'Armadillo Saloon',            sprite =  935247438,     x = -3704.92,   y = -2594.41,   z = -13.29 },
    { name = 'St Denis Saloon',             sprite =  935247438,     x = 2634.02,    y = -1225.51,   z = 53.39 },
-- Markets
    { name = 'Farming Market',              sprite = 819673798,      x = 1420.48,    y = 379.59,     z = 90.35 },
    { name = 'Trading Post',                sprite =  784218150,     x = 3027.14,    y = 559.9,      z = 44.74 },
    { name = 'Smelting',                    sprite =  1754365229,    x = -6046.72,   y = -3259.0,    z = -17.97 },
--Medical Offices
    { name = 'St Denis Medical Office',     sprite = -695368421,     x = 2719.62,    y = -1232.03,   z = 50.38 },
-- Misc
    { name = 'Mexico Bridge',               sprite =  -428972082,    x = -6320.78,   y = -4276.67,   z = 29.11 },
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

--[[
--Sheriff Stations
    { name = 'St Denis Sheirff',            sprite = -1596758107,    x = 2510.3,    y = -1308.67,   z = 48.95 },
    { name = 'Valentine Sheriff',           sprite = -1596758107,    x = -277.8,    y = 806.05,   z = 119.38 },
    { name = 'Blackwater Sheriff',          sprite = -1596758107,    x = -762.34,    y = -1268.21,   z = 44.04 },
    { name = 'Strawberry Sheriff',          sprite = -1596758107,    x = -1808.93,    y = -348.25,   z = 164.65 },
    { name = 'Rhodes Sheriff',              sprite = -1596758107,    x = 1361.72,    y = -1302.4,   z = 77.77 },
    { name = 'Annesburg Sheriff',           sprite = -1596758107,    x = 2907.92,    y = 1312.13,   z = 44.94 },
    { name = 'Armadillo Sheriff',           sprite = -1596758107,    x = -3623.23,    y = -2602.22,   z = -13.34 },
    { name = 'TumbleWeed Sheriff',          sprite = -1596758107,    x = -5530.32,    y = -2928.86,   z = -1.36 },
    --]]