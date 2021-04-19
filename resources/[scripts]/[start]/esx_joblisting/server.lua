ESX              = nil
local PlayerData = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('polemploi:abatteur')
AddEventHandler('polemploi:abatteur', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("slaughterer", 0)	
end)

RegisterNetEvent('polemploi:chomeur1')
AddEventHandler('polemploi:chomeur1', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob("unemployed", 0)	
end)

RegisterNetEvent('polemploi:chomeur2')
AddEventHandler('polemploi:chomeur2', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.setJob2("unemployed2", 0)	
end)

