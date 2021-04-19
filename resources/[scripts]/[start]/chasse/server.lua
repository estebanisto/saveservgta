
ESX                = nil
PlayersHarvesting  = {}
PlayersCrafting    = {}


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function Harvest(source)
	local _source = source

		if PlayersHarvesting[_source] == true then

			local xPlayer  = ESX.GetPlayerFromId(_source)
			local ViandeQuantity = xPlayer.getInventoryItem('meat').count
			local randommeat = math.random(1, 5)

			if ViandeQuantity >= 50 then
				TriggerClientEvent('esx:showNotification', _source, "~r~Vous n'avez plus de place")		
			else
                xPlayer.addInventoryItem('meat', randommeat)
			end
		end
end

RegisterServerEvent('chasse:startRecup')
AddEventHandler('chasse:startRecup', function()
	local _source = source
	PlayersHarvesting[_source] = true
	Harvest(_source)
end)

function Craft(source)
	local _source = source

	SetTimeout(4000, function()

		if PlayersCrafting[_source] == true then

			local xPlayer  = ESX.GetPlayerFromId(_source)
			local ViandeQuantity = xPlayer.getInventoryItem('meat').count
			local price = math.random(10, 20)

			if ViandeQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', _source, 'Vous n\'avez ~r~pas assez~s~ de viande')			
			else
                xPlayer.removeInventoryItem('meat', 1)
				xPlayer.addMoney(price)
				Craft(_source)
			end
		end
	end)
end

RegisterServerEvent('chasse:startVente')
AddEventHandler('chasse:startVente', function()
	local _source = source
	PlayersCrafting[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Vente de la ~b~viande~s~...')
	Craft(_source)
end)

RegisterServerEvent('chasse:stopVente')
AddEventHandler('chasse:stopVente', function()
	local _source = source
	PlayersCrafting[_source] = false
end)