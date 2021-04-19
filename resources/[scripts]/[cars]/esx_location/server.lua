ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("esx:bike:lowmoney")
AddEventHandler("esx:bike:lowmoney", function(money)
	local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeMoney(money)
end)


RegisterServerEvent("esx:bike:lowmoneyRendu")
AddEventHandler("esx:bike:lowmoneyRendu", function(money)
	local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addMoney(money)
end)

RegisterServerEvent("esx:bike:antifdp")
AddEventHandler("esx:bike:antifdp", function(source)
	local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.RemoveMoney(200)
	DropPlayer(_source, "RUBY-ANTICHEAT | Alors ? Tu à essayer de glitch l'argent ? Dégage du serveur.")
end)