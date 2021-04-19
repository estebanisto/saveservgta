ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)


RMenu.Add('Tabac', 'recolte', RageUI.CreateMenu("Tabac", "Vous pouvez récoltez du ~o~Tabac"))
RMenu.Add('Tabac', 'traitement', RageUI.CreateMenu("Tabac", "Vous pouvez séchez le ~o~Tabac"))
RMenu.Add('Tabac', 'vente', RageUI.CreateMenu("Tabac", "Vente des Produits"))

local playerPed = PlayerPedId()

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Tabac', 'recolte'), true, true, true, function()

                RageUI.Button("Récolte du ~o~Tabac", "", {}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        notify('Vous êtes entrain de récolté du Tabac...')
            FreezeEntityPosition(GetPlayerPed(-1),true) 
            TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
            Wait(25000)
            ClearPedTasks(playerPed)
            TriggerServerEvent('recolteTabac')
            FreezeEntityPosition(GetPlayerPed(-1),false) 
                    end
                end)
            end, function()
            end)

                RageUI.IsVisible(RMenu:Get('Tabac', 'traitement'), true, true, true, function()

                    RageUI.Button("Séchage du ~o~Tabac", "", {}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            notify('Vous êtes entrain de sécher le Tabac...')
           FreezeEntityPosition(GetPlayerPed(-1),true)
           TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)
           Wait(25000)
           ClearPedTasks(playerPed)
            TriggerServerEvent('sechTabac')
           FreezeEntityPosition(GetPlayerPed(-1),false) 
                        end
                    end)
                end, function()
                end)

                    RageUI.IsVisible(RMenu:Get('Tabac', 'vente'), true, true, true, function()

                        RageUI.Button("Vente du ~o~Tabac", "", {}, true, function(Hovered, Active, Selected)
                            if (Selected) then
                                notify('Vous êtes entrain de vendre le Tabac...')
            FreezeEntityPosition(GetPlayerPed(-1),true)
            Wait(1500)
            ClearPedTasks(playerPed)
            TriggerServerEvent('vendreTabac')
            FreezeEntityPosition(GetPlayerPed(-1),false)
                            end
                        end)
                        
            end, function()
                ---Panels
            end, 1)
    
            Citizen.Wait(0)
        end
    end)



    ---------------------------------------- Position du Menu --------------------------------------------

    Citizen.CreateThread(function()
        local playerPed = PlayerPedId()
        while true do
            Wait(0)
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                if IsEntityAtCoord(PlayerPedId(), 2495.266, 4860.730, 35.968, 1.5, 1.5, 1.5, 0, 1, 0) then 
                    
                          RageUI.Text({
                            message = "Appuyez sur [~b~E~w~] pour récolté du  ~g~Tabac Sec",
                            time_display = 1
                        })
                            if IsControlJustPressed(1, 51) then
                                RageUI.Visible(RMenu:Get('Tabac', 'recolte'), not RageUI.Visible(RMenu:Get('Tabac', 'recolte')))
                            end
                        end
                    end    
            end)
    
            Citizen.CreateThread(function()
                local playerPed = PlayerPedId()
                while true do
                    Wait(0)
            
                        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                        if IsEntityAtCoord(PlayerPedId(), 2230.742, 4769.844, 39.959, 1.5, 1.5, 1.5, 0, 1, 0) then 
                                   RageUI.Text({
                                    message = "Appuyez sur [~b~E~w~] pour sechez le ~g~Tabac",
                                    time_display = 1
                                })
                                    if IsControlJustPressed(1, 51) then
                                        RageUI.Visible(RMenu:Get('Tabac', 'traitement'), not RageUI.Visible(RMenu:Get('Tabac', 'traitement')))
                                    end
                                end
                            end    
                    end)
    
                    Citizen.CreateThread(function()
                        local playerPed = PlayerPedId()
                        while true do
                            Wait(0)
                    
                                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                                if IsEntityAtCoord(PlayerPedId(), 68.924179077148, 127.1748046875, 78.226, 1.5, 1.5, 1.5, 0, 1, 0) then 
                                          RageUI.Text({
                                            message = "Appuyez sur [~b~E~w~] pour vendre le ~g~Tabac",
                                            time_display = 1
                                        })
                                            if IsControlJustPressed(1, 51) then
                                                RageUI.Visible(RMenu:Get('Tabac', 'vente'), not RageUI.Visible(RMenu:Get('Tabac', 'vente')))
                                            end
                                        end
                                    end    
                            end)
    
            function notify(text)
                SetNotificationTextEntry('STRING')
                AddTextComponentString(text)
                DrawNotification(false, false)
            end

