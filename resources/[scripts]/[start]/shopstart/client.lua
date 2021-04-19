ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(5000)
    end
end)

local Shop = {
    Base = { Title = "Arrivée en ville" },
    Data = { currentMenu = "Bienvenue en ville !" },
    Events = {
        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
            if btn.name == "Eau" then
                TriggerServerEvent('shop:giveItemWater')
                FreezeEntityPosition(GetPlayerPed(-1), false)
                ClearPedTasks(GetPlayerPed(-1))    
                ESX.ShowNotification('Vous avez achetez de l\'eau.')
                DisplayRadar(true)
                Citizen.Wait(1)
            end
            if btn.name == "Pain" then
                TriggerServerEvent('shop:giveItemBread')
                FreezeEntityPosition(GetPlayerPed(-1), false)
                ClearPedTasks(GetPlayerPed(-1))    
                ESX.ShowNotification('Vous avez achetez du pain.')
                Citizen.Wait(1)
            end
            if btn.name == "Téléphone" then
                TriggerServerEvent('shop:giveItemphone')
                FreezeEntityPosition(GetPlayerPed(-1), false)
                ClearPedTasks(GetPlayerPed(-1))    
                ESX.ShowNotification('Vous avez achetez un téléphone.')
                Citizen.Wait(1)
            end
            if btn.name == "GPS" then
                TriggerServerEvent('shop:giveItemGPS')
                FreezeEntityPosition(GetPlayerPed(-1), false)
                ClearPedTasks(GetPlayerPed(-1))    
                ESX.ShowNotification('Vous avez achetez un GPS.')
                Citizen.Wait(1)
            end
        end,
    },

    Menu = {
        ["Bienvenue en ville !"] = {
            b = {
                {name = "Nourriture", ask = ">", askX = true},
                {name = "Divers", ask = ">", askX = true},
            }
        },
        ["nourriture"] = {
            b = {
                {name = "Eau", ask = "~g~$7", askX = true},
                {name = "Pain", ask = "~g~$7", askX = true},
            }
        },
        ["divers"] = {
            b = {
                {name = "Téléphone", ask = "~g~$150", askX = true},
                {name = "GPS", ask = "~g~$20", askX = true},
            }
        },

    }
}
local point = vector3(-204.504, -1008.616, 29.547);


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if Vdist2(GetEntityCoords(PlayerPedId(), false), point) < 1.5 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parler au ~b~Vendeur")
		    if IsControlJustPressed(1,51) then 
                CreateMenu(Shop)
		    end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        if Vdist2(GetEntityCoords(PlayerPedId(), false), point) < 3.5 then
		    if IsControlJustPressed(1,51) then 
                CreateMenu(Shop)
		    end
        end
    end
end)


Citizen.CreateThread(function()
    local hash = GetHashKey("ig_drfriedlander")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(5000)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "ig_drfriedlander", -204.504, -1008.616, 28.547, 156.055, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)