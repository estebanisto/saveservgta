ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('recolteTabac')
AddEventHandler('recolteTabac', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    local tabac = xPlayer.getInventoryItem('tabacblond').count

    if tabac > 50 then
        TriggerClientEvent('esx:showNotification', source, '~r~Vous en portez trop.')
    elseif tabac < 50 then
        xPlayer.addInventoryItem('tabacblond', 10)
    end
end)

RegisterNetEvent('sechTabac')
AddEventHandler('sechTabac', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    local tabac = xPlayer.getInventoryItem('tabacblond').count
    local sechTabac = xPlayer.getInventoryItem('tabacblondsec').count

    if sechTabac > 20 then
        TriggerClientEvent('esx:showNotification', source, '~r~Vous en portez trop')
    elseif tabac < 3 then
        TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez pas assez de Tabac Blond')
    else
        xPlayer.removeInventoryItem('tabacblond', 5)
        xPlayer.addInventoryItem('tabacblondsec', 10)    
    end
    end)

RegisterNetEvent('vendreTabac')
AddEventHandler('vendreTabac', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    local sechTabac = xPlayer.getInventoryItem('tabacblondsec').count

    if sechTabac > 0 then
        TriggerClientEvent('esx:showNotification', source, 'Vous avez vendu un Tabac Blond Sec ~g~5$')
    xPlayer.removeInventoryItem('tabacblondsec', 1)
    xPlayer.addMoney(10)
    else
        TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez plus de Tabac Blond Sec ')
    end
end)