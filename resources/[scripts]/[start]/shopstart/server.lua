ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('shop:giveItemWater')
AddEventHandler('shop:giveItemWater', function(job)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem("water", 1)
	xPlayer.removeMoney(7)
end)


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('shop:giveItemBread')
AddEventHandler('shop:giveItemBread', function(job)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem("bread", 1)
	xPlayer.removeMoney(7)
end)

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('shop:giveItemphone')
AddEventHandler('shop:giveItemphone', function(job)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem("phone", 1)
	xPlayer.removeMoney(150)
end)

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('shop:giveItemGPS')
AddEventHandler('shop:giveItemGPS', function(job)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem("gps", 1)
	xPlayer.removeMoney(20)
end)
