if Trigger.JOBDISPLAY then -- must be using WH_Redemrp_Doctor resource

RedEM = exports["redem_roleplay"]:RedEM()

RegisterCommand('showjob', function(source)
    local _source = source
    local Player = RedEM.GetPlayer(_source)
        local job = Player.getJob()
        local jobgrade = Player.getJobgrade()
        TriggerClientEvent('redem_roleplay:Tip', _source,"Hello "..Player.firstname.." "..Player.lastname.."! Your job is: "..Player.job.." level "..Player.jobgrade, 5000)
    end)
end