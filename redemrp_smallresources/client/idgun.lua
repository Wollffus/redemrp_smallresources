-- (Re)set locals at start
local infoOn = false    -- Disables the info on restart.
local coordsText = ""   -- Removes any text the coords had stored.
local headingText = ""  -- Removes any text the heading had stored.
local modelText = ""    -- Removes any text the model had stored.



-- Thread that makes everything happen.
Citizen.CreateThread(function()                             -- Create the thread.
    while true do                                           -- Loop it infinitely.
        local pause = 250                                   -- If infos are off, set loop to every 250ms. Eats less resources.
        if infoOn then                                      -- If the info is on then...
            pause = 5                                       -- Only loop every 5ms (equivalent of 200fps).
            local player = GetPlayerPed(-1)                 -- Get the player.
            if IsPlayerFreeAiming(PlayerId()) then          -- If the player is free-aiming (update texts)...
                local entity = getEntity(PlayerId())        -- Get what the player is aiming at. This isn't actually the function, that's below the thread.
                local coords = GetEntityCoords(entity)      -- Get the coordinates of the object.
                local heading = GetEntityHeading(entity)    -- Get the heading of the object.
                local model = GetEntityModel(entity)        -- Get the hash of the object.
                coordsText = coords                         -- Set the coordsText local.
                headingText = heading                       -- Set the headingText local.
                modelText = model                           -- Set the modelText local.
            end                                             -- End (player is not freeaiming: stop updating texts).
            DrawInfos("RDR2_IDGUN" .. '' .."\nCoordinates: " .. coordsText .. "\nHeading: " .. headingText .. "\nHash: " .. modelText)     -- Draw the text on screen
        end                                                 -- Info is off, don't need to do anything.
        Citizen.Wait(pause)                                 -- Now wait the specified time.
    end                                                     -- End (stop looping).
end)                                                        -- Endind the entire thread here.



-- Function to get the object the player is actually aiming at.
function getEntity(player)                                          -- Create this function.
    local result, entity = GetEntityPlayerIsFreeAimingAt(player)    -- This time get the entity the player is aiming at.
    return entity                                                   -- Returns what the player is aiming at.
end                                                                 -- Ends the function.

-- Save5Bucks Rework Start

-- Function to draw the text.
function DrawInfos(text)
              
    local drawtext = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    SetTextScale(0.5, 0.5) -- Scales text.
  	SetTextFontForCurrentCommand(1) -- Text Font. 1 Western Style text, 2 Modern Text with Balls, 3 N/A, 4 Supper Clean, Not checking the rest.
    SetTextColor(255, 255, 255, 215) -- Color.
    SetTextCentre(0) -- Changes the test alot, 1 put the text top left.
    DisplayText(drawtext,0.5,0.71) -- str don't touch - str, x , y position.
    local factor = (string.len(text)) / 225

end

-- Save5Bucks Rework End

-- Creating the function to toggle the info.
ToggleInfos = function()                -- "ToggleInfos" is a function
    infoOn = not infoOn                 -- Switch them around
end                                     -- Ending the function here.



-- Creating the command.
RegisterCommand("idgun", function()     -- Listen for this command.
    ToggleInfos()                       -- Heard it! Let's toggle the function above.
end)                                    -- Ending the function here.