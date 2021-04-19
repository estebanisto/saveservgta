ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('soin:petit')
AddEventHandler('soin:petit', function(job)

    local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(150)
end)


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('soin:grand')
AddEventHandler('soin:grand', function(job)

    local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(700)
end)

