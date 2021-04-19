ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(5000)
    end
end)


_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Ammunation","Bienvenue à l'armurie", nil, nil)
_menuPool:Add(mainMenu)

function AddAmmuMenu(menu)
    local gunsmenu = _menuPool:AddSubMenu(menu, "Achats d'Armes", nil, nil)
    gunsmenu.Item:SetRightBadge(BadgeStyle.Tick)
    
    local pistol = NativeUI.CreateItem("Pistolet", "")
    gunsmenu.SubMenu:AddItem(pistol)
    pistol:RightLabel("2500$")

    gunsmenu.SubMenu.OnItemSelect = function(menu, item)
        if item == pistol then
            TriggerServerEvent('buyPISTOL')
            ESX.ShowNotification('Vous avez payez ~r~2500$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Armurerie", "Vous avez acheté un ~b~Pistolet", "", "CHAR_AMMUNATION", 1)          
        end
    end
end


AddAmmuMenu(mainMenu)
_menuPool:RefreshIndex()

local pos = {
    { x = 22.09,      y = -1107.28,   z = 28.80 }
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(pos) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parlez avec le ~r~Vendeur")
				if IsControlJustPressed(1,51) then 
                    mainMenu:Visible(not mainMenu:Visible())
				end
            end
        end
    end
end)

local blips = {
    {title="Armurerie", colour=4, id=110, x = 22.09,      y = -1107.28,   z = 28.80}
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.9)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

