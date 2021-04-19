RMenu.Add('showcase', 'shopMenu', RageUI.CreateMenu("Accessoires", 'Choisis tes accessoires'))
RMenu:Get('showcase', 'shopMenu').EnableMouse = false

local function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

local index = {
    items = 1
}

local actualPrice = 0

RageUI.CreateWhile(1.0, function()
    if RageUI.Visible(RMenu:Get('showcase', 'shopMenu')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()

             for k, v in pairs(accessory_Config.Items) do
                RageUI.List(v.Label .. ''.. _U('price') .. ' | Prix -> ~g~' .. v.Price .. ' $', Numbers, index.items, nil, { }, true, function(hovered, active, selected, Index)
                    index.items = Index

                    if selected then
                        local item = v.Value
                        local count = Numbers[Index]
                        local price = v.Price * count

                        TriggerServerEvent('accessory:giveItem', v, count)
                    end
                end)
            end

        end, function()
        end)
    end
end, 1)