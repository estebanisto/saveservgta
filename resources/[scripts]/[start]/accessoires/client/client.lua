ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end
end)

accessory_Config = {
    Positions = {
            { x = 18.28125,      y = -1110.5366210938,   z = 29.80 }
	},
	
	    Items = {
        {Label = 'Skin de Luxe', Value = 'yusuf', Price = 950},
        {Label = 'Poignée', Value = 'grip', Price = 150 },
        {Label = 'Chargeur', Value = 'clip', Price = 500 },
        {Label = 'Silencieux', Value = 'silencieux', Price = 500 },
        {Label = 'Lampe', Value = 'flashlight', Price = 250 },
        {Label = 'Viseur', Value = 'celownikdluga', Price = 800 } 
    }
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerCoords = GetEntityCoords(PlayerPedId())
		for k, v in pairs(accessory_Config.Positions) do
			local distance = GetDistanceBetweenCoords(playerCoords, v.x, v.y, v.z, true)
            if distance < 10.0 then
                actualZone = v
                zoneDistance = GetDistanceBetweenCoords(playerCoords, actualZone.x, actualZone.y, actualZone.z, true)
				DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 100, 255, 200, true, true, 2, false, nil, nil, false)
            end

            if distance <= 1.5 then
                ESX.ShowHelpNotification(_U('open_menu'))
                if IsControlJustPressed(1, 51) then
                    RageUI.Visible(RMenu:Get('showcase', 'shopMenu'), not RageUI.Visible(RMenu:Get('showcase', 'shopMenu')))
                end
            end

            if zoneDistance ~= nil then
                if zoneDistance > 1.5 then
                    RageUI.CloseAll()
                end
            end
		end
	end
end)

local max = 10 
Numbers = {}

Citizen.CreateThread(function()
    for i = 1, max do
        table.insert(Numbers, i)
    end
end)