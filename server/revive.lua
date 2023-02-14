-- globals --
if Trigger.REVIVE then -- must be using WH_Redemrp_Doctor resource
	data = {}
	TriggerEvent("redemrp_inventory:getData",function(call)
		data = call
	end)

		RegisterServerEvent("RegisterUsableItem:snakeoil")
		AddEventHandler("RegisterUsableItem:snakeoil", function(source)
				local _source = source
				TriggerClientEvent('redemrp_inventory:close_inventory', source)
				TriggerClientEvent('WH_Redemrp_Doctor:open', _source)
				local ItemData = data.getItem(_source, 'snakeoil')
				ItemData.RemoveItem(1)
				Wait(7500)
				TriggerClientEvent('WH_Redemrp_Doctor:close', _source)
			end)
	end