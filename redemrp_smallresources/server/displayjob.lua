RedEM = exports["redem_roleplay"]:RedEM()

RegisterCommand('showjob', function(source)
    local _source = source
    local Player = RedEM.GetPlayer(_source)
        local job = Player.getJob()
        local jobgrade = Player.getJobgrade()
        TriggerClientEvent('redem_roleplay:Tip', _source, job, 3000)
        Wait(3000)
        TriggerClientEvent('redem_roleplay:Tip', _source, jobgrade, 3000)
    end)
