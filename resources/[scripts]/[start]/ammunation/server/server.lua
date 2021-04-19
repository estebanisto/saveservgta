ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('buyPISTOL')
AddEventHandler('buyPISTOL', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PricePISTOL
    xPlayer.removeMoney(price)
    xPlayer.addWeapon('WEAPON_PISTOL', 100)
end)

