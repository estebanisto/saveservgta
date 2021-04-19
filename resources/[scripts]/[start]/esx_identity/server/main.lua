ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getIdentity(source, callback)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT identifier, firstname, lastname, dateofbirth, sex, height FROM `users` WHERE `identifier` = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		if result[1].firstname ~= nil then
			local data = {
				identifier	= result[1].identifier,
				firstname	= result[1].firstname,
				lastname	= result[1].lastname,
				dateofbirth	= result[1].dateofbirth,
				sex			= result[1].sex,
				height		= result[1].height
			}

			callback(data)
		else
			local data = {
				identifier	= '',
				firstname	= '',
				lastname	= '',
				dateofbirth	= '',
				sex			= '',
				height		= ''
			}

			callback(data)
		end
	end)
end

function setIdentity(identifier, data, callback)
	MySQL.Async.execute('UPDATE `users` SET `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier', {
		['@identifier']		= identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(rowsChanged)
		if callback then
			callback(true)
		end
	end)
end

function updateIdentity(playerId, data, callback)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	MySQL.Async.execute('UPDATE `users` SET `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier', {
		['@identifier']		= xPlayer.identifier,
		['@firstname']		= data.firstname,
		['@lastname']		= data.lastname,
		['@dateofbirth']	= data.dateofbirth,
		['@sex']			= data.sex,
		['@height']			= data.height
	}, function(rowsChanged)
		if callback then
			TriggerEvent('esx_identity:characterUpdated', playerId, data)
			callback(true)
		end
	end)
end

function deleteIdentity(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('UPDATE `users` SET `firstname` = @firstname, `lastname` = @lastname, `dateofbirth` = @dateofbirth, `sex` = @sex, `height` = @height WHERE identifier = @identifier', {
		['@identifier']		= xPlayer.identifier,
		['@firstname']		= '',
		['@lastname']		= '',
		['@dateofbirth']	= '',
		['@sex']			= '',
		['@height']			= '',
	})
end

RegisterServerEvent('esx_identity:setIdentity')
AddEventHandler('esx_identity:setIdentity', function(data, myIdentifiers)
	local xPlayer = ESX.GetPlayerFromId(source)
	setIdentity(myIdentifiers.steamid, data, function(callback)
		if callback then
			TriggerClientEvent('esx_identity:identityCheck', myIdentifiers.playerid, true)
			TriggerEvent('esx_identity:characterUpdated', myIdentifiers.playerid, data)
		else
			xPlayer.showNotification(_U('failed_identity'))
		end
	end)
end)

AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
	local myID = {
		steamid = xPlayer.identifier,
		playerid = playerId
	}

	TriggerClientEvent('esx_identity:saveID', playerId, myID)

	getIdentity(playerId, function(data)
		if data.firstname == '' then
			TriggerClientEvent('esx_identity:identityCheck', playerId, false)
			TriggerClientEvent('esx_identity:showRegisterIdentity', playerId)
		else
			TriggerClientEvent('esx_identity:identityCheck', playerId, true)
			TriggerEvent('esx_identity:characterUpdated', playerId, data)
		end
	end)
end)

AddEventHandler('esx_identity:characterUpdated', function(playerId, data)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	if xPlayer then
		xPlayer.setName(('%s %s'):format(data.firstname, data.lastname))
		xPlayer.set('firstName', data.firstname)
		xPlayer.set('lastName', data.lastname)
		xPlayer.set('dateofbirth', data.dateofbirth)
		xPlayer.set('sex', data.sex)
		xPlayer.set('height', data.height)
	end
end)

-- Set all the client side variables for connected users one new time
AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(3000)
		local xPlayers = ESX.GetPlayers()

		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

			if xPlayer then
				local myID = {
					steamid  = xPlayer.identifier,
					playerid = xPlayer.source
				}
	
				TriggerClientEvent('esx_identity:saveID', xPlayer.source, myID)
	
				getIdentity(xPlayer.source, function(data)
					if data.firstname == '' then
						TriggerClientEvent('esx_identity:identityCheck', xPlayer.source, false)
						TriggerClientEvent('esx_identity:showRegisterIdentity', xPlayer.source)
					else
						TriggerClientEvent('esx_identity:identityCheck', xPlayer.source, true)
						TriggerEvent('esx_identity:characterUpdated', xPlayer.source, data)
					end
				end)
			end
		end
	end
end)

function getCharacters(source, callback)
	local identifier = GetPlayerIdentifiers(source)[1]
	  MySQL.Async.fetchAll("SELECT * FROM `characters` WHERE `identifier` = @identifier",
	{
	  ['@identifier'] = identifier
	},
	function(result)
	  if result[1] and result[2] and result[3] then
		local data = {
		  identifier    = result[1]['identifier'],
		  firstname1    = result[1]['firstname'],
		  lastname1    = result[1]['lastname'],
		  dateofbirth1  = result[1]['dateofbirth'],
		  sex1      = result[1]['sex'],
		  height1      = result[1]['height'],
		  firstname2    = result[2]['firstname'],
		  lastname2    = result[2]['lastname'],
		  dateofbirth2  = result[2]['dateofbirth'],
		  sex2      = result[2]['sex'],
		  height2      = result[2]['height'],
		  firstname3    = result[3]['firstname'],
		  lastname3    = result[3]['lastname'],
		  dateofbirth3  = result[3]['dateofbirth'],
		  sex3      = result[3]['sex'],
		  height3      = result[3]['height']
		}
  
		callback(data)
	  elseif result[1] and result[2] and not result[3] then
		local data = {
		  identifier    = result[1]['identifier'],
		  firstname1    = result[1]['firstname'],
		  lastname1    = result[1]['lastname'],
		  dateofbirth1  = result[1]['dateofbirth'],
		  sex1      = result[1]['sex'],
		  height1      = result[1]['height'],
		  firstname2    = result[2]['firstname'],
		  lastname2    = result[2]['lastname'],
		  dateofbirth2  = result[2]['dateofbirth'],
		  sex2      = result[2]['sex'],
		  height2      = result[2]['height'],
		  firstname3    = '',
		  lastname3    = '',
		  dateofbirth3  = '',
		  sex3      = '',
		  height3      = ''
		}
  
		callback(data)
	  elseif result[1] and not result[2] and not result[3] then
		local data = {
		  identifier    = result[1]['identifier'],
		  firstname1    = result[1]['firstname'],
		  lastname1    = result[1]['lastname'],
		  dateofbirth1  = result[1]['dateofbirth'],
		  sex1      = result[1]['sex'],
		  height1      = result[1]['height'],
		  firstname2    = '',
		  lastname2    = '',
		  dateofbirth2  = '',
		  sex2      = '',
		  height2      = '',
		  firstname3    = '',
		  lastname3    = '',
		  dateofbirth3  = '',
		  sex3      = '',
		  height3      = ''
		}
  
		callback(data)
	  else
		local data = {
		  identifier    = '',
		  firstname1    = '',
		  lastname1    = '',
		  dateofbirth1  = '',
		  sex1      = '',
		  height1      = '',
		  firstname2    = '',
		  lastname2    = '',
		  dateofbirth2  = '',
		  sex2      = '',
		  height2      = '',
		  firstname3    = '',
		  lastname3    = '',
		  dateofbirth3  = '',
		  sex3      = '',
		  height3      = ''
		}
  
		callback(data)
	  end
	end)
  end

TriggerEvent('es:addCommand', 'register', function(source, args, user)
	getCharacters(source, function(data)
	  if data.firstname3 ~= '' then
		TriggerClientEvent('chatMessage', source, 'REGISTER', {255, 0, 0}, "You Can Only Have 3 Characters.")
	  else
		TriggerClientEvent('esx_identity:showRegisterIdentity', source, {})
	  end
	end)
  end)