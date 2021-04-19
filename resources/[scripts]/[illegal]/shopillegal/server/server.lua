ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('buyGilet')
AddEventHandler('buyGilet', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceGilet
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('bulletproof', 1)
end)

RegisterNetEvent('buyCracker')
AddEventHandler('buyCracker', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceCracker
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('net_cracker', 1)
end)

RegisterNetEvent('buyTrack')
AddEventHandler('buyTrack', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceTrack
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('track', 1)
end)





