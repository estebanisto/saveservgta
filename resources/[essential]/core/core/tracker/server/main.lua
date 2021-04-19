ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('track', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)


	TriggerClientEvent('tracker:track', source)

end)




  RegisterServerEvent('tracker:gps')
  AddEventHandler('tracker:gps', function()
    local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('track', 1)

end)

