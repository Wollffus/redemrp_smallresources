RegisterCommand("giveacash", function(source, args)
    local veren = source
    if #args >= 2 then
        local alici =  tonumber(args[1])
        local verilenmiktar =  tonumber(args[2]) 
        if alici ~= veren then
            TriggerEvent('redemrp:getPlayerFromId', veren, function(verenuser,verendata)
                local vereninparasi = verenuser.getMoney()
                if verilenmiktar > 0 and tonumber(vereninparasi) >= tonumber(verilenmiktar) then 
                    TriggerEvent('redemrp:getPlayerFromId', alici, function(aliciuser,alicidata) 
                        if aliciuser ~= nil then
                            aliciuser.addMoney(verilenmiktar)
                            verenuser.removeMoney(verilenmiktar)
                            TriggerClientEvent('redem_roleplay:NotifyLeft', alici, "Money Received", GetPlayerName(veren).." from person " .. verilenmiktar .. " $ aldin.", "itemtype_textures", "itemtype_cash", 3000)
                            TriggerClientEvent('redem_roleplay:NotifyLeft', veren, "Money Given", GetPlayerName(alici).." to the person " .. verilenmiktar .. " $ verdin.", "itemtype_textures", "itemtype_cash", 3000)
                        else                        
                            TriggerClientEvent('redem_roleplay:NotifyLeft', veren, "Hata", "You entered the person's ID incorrectly.", "generic_textures", "tick", 3000)
                        end
                    end)
                end            
            end)
        else
            TriggerClientEvent('redem_roleplay:NotifyLeft', veren, "Misuse", "You don't give yourself money!", "generic_textures", "lock", 3000)
        end 
    else
        TriggerClientEvent('redem_roleplay:NotifyLeft', veren, "Misuse", "/Use the amount of paraver id to be given.", "generic_textures", "tick", 3000)
    end    
end)
