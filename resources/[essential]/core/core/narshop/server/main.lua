ESX             = nil
local ShopItems = {}
local hasSqlRun = false

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Load items
AddEventHandler('onMySQLReady', function()
	hasSqlRun = true
end)

-- extremely useful when restarting script mid-game
Citizen.CreateThread(function()
	Citizen.Wait(2000) -- hopefully enough for connection to the SQL server

	if not hasSqlRun then
		hasSqlRun = true
	end
end)


ESX.RegisterServerCallback('narshop:requestDBItems', function(source, cb)
	if not hasSqlRun then
	end

	cb(ShopItems)
end)

RegisterServerEvent('narshop:buyItem')
AddEventHandler('narshop:buyItem', function(itemName, amount, zone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	amount = ESX.Round(amount)

	-- is the player trying to exploit?
	if amount < 0 then
		print('narshop: ' .. xPlayer.identifier .. ' attempted to exploit the shop!')
		return
	end

	-- get price
	local price = 0
	local itemLabel = ''

	for i=1, #ShopItems[zone], 1 do
		if ShopItems[zone][i].item == itemName then
			price = ShopItems[zone][i].price
			itemLabel = ShopItems[zone][i].label
			break
		end
	end

	price = price * amount

	-- can the player afford this item?
	if xPlayer.getMoney() >= price then
		-- can the player carry the said amount of x item?
		if sourceItem.limit ~= -1 and (sourceItem.count + amount) > sourceItem.limit then
			TriggerClientEvent('esx:showNotification', _source, _U('player_cannot_hold'))
		else
			xPlayer.removeMoney(price)
			xPlayer.addInventoryItem(itemName, amount)
			TriggerClientEvent('esx:showNotification', _source, _U('bought', amount, itemLabel, price))
		end
	else
		local missingMoney = price - xPlayer.getMoney()
		TriggerClientEvent('esx:showNotification', _source, _U('not_enough', missingMoney))
	end
end)

RegisterServerEvent('narshop:remove')
AddEventHandler('narshop:remove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('clip', function(source)
	TriggerClientEvent('narshop:clipcli', source)
end)

ESX.RegisterUsableItem('silencieux', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('narshop:silencieux', source)

end)

ESX.RegisterUsableItem('flashlight', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
	
    TriggerClientEvent('narshop:flashlight', source)
	
end)

ESX.RegisterUsableItem('grip', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
		
    TriggerClientEvent('narshop:grip', source)
	
end)


ESX.RegisterUsableItem('yusuf', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('narshop:yusuf', source)

end)
