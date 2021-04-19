ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('accessory:giveItem')
AddEventHandler('accessory:giveItem', function(item, count)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerMoney = xPlayer.getMoney()

    if playerMoney >= item.Price * count then
        xPlayer.addInventoryItem(item.Value, count)
        xPlayer.removeMoney(item.Price * count)

        TriggerClientEvent('esx:showNotification', source, "Merci de votre achat.")
     else
          TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez d'argent, il vous manque: ~b~".. item.Price * count - playerMoney .."$")
     end
end)