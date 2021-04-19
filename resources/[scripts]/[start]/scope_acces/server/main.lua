ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('celownikdluga', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('esx_attachments_bleiker:celownikdluga', source)

end)


