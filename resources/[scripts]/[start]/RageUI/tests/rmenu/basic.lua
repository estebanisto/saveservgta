---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 20/12/2019 19:07
---

RMenu.Add('showcase', 'main', RageUI.CreateMenu("RageUI", "Undefined for using SetSubtitle"))
RMenu:Get('showcase', 'main'):SetSubtitle("~b~RAGEUI SHOWCASE")
RMenu:Get('showcase', 'main').EnableMouse = false
RMenu:Get('showcase', 'main').Closed = function()
    -- TODO Perform action
end;

RMenu.Add('showcase', 'submenu', RageUI.CreateSubMenu(RMenu:Get('showcase', 'main'), "RageUI", "~b~RAGEUI SHOWCASE", nil, nil, "root_cause", "shopui_title_dynasty8"))

---@type table
local foods = {
    "Banana",
    "Apple",
    "Pizza",
    "Quartilicious",
    "Steak",
    0xF00D,
}

local index = {
    ketchup = false;
    dish = 1;
    quantity = 0;
}

---@type string
local description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

local items = 10;

RageUI.CreateWhile(1.0, true, function()

    if IsControlJustPressed(1, 358) then
        RageUI.Visible(RMenu:Get('showcase', 'main'), not RageUI.Visible(RMenu:Get('showcase', 'main')))
    end

    if RageUI.Visible(RMenu:Get('showcase', 'main')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            ---Items
            RageUI.Checkbox("Add ketchup ?", "Do you wish to add ketchup ?", index.ketchup, { Style = RageUI.CheckboxStyle.Tick }, function(Hovered, Selected, Active, Checked)
                if (Hovered) then

                end
                if (Active) then

                end
                if (Selected) then
                    RageUI.Text({
                        message = string.format("~r~Ketchup status: ~b~%s", tostring(index.ketchup))
                    })
                end
                index.ketchup = Checked;
            end)

            RageUI.List("Food", foods, index.dish, "Select the type of food you want to eat.", {}, true, function(Hovered, Active, Selected, Index)
                if (Hovered) then

                end
                if (Active) then
                    RageUI.Text({
                        message = string.format("Preparing ~b~%s~w~...", foods[index.dish])
                    })
                end
                if (Selected) then

                end
                index.dish = Index;
            end)

            RageUI.Slider("Quantity", index.quantity, 10, "Select the amount of food you want to eat.", false, { }, true, function(Hovered, Selected, Active, Index)
                if (Hovered) then

                end
                if (Selected) then
                    RageUI.Text({
                        message = string.format("Preparing ~r~%s ~b~%s(s)~w~...", index.quantity, foods[index.dish])
                    })
                end
                if (Active) then

                end
                index.quantity = Index;
            end)

            RageUI.Button("Cook !", "Cook the dish with the appropriate ingredients and ketchup.", { RightBadge = RageUI.BadgeStyle.Tick }, true, function(Hovered, Active, Selected)
                if (Hovered) then

                end
                if (Active) then

                end
                if (Selected) then
                    local string = string.format("You have ordered ~r~%s ~b~%s(s)~w~ ~r~with~w~ ketchup.", index.quantity, foods[index.dish])
                    if not (index.ketchup) then
                        string = string.format("You have ordered ~r~%s ~b~%s(s)~w~ ~r~without~w~ ketchup.", index.quantity, foods[index.dish])
                    end
                    RageUI.Text({
                        message = string;
                    })
                end
            end)

            RageUI.Button("Another Menu", "Sample description that takes more than one line. Moreso, it takes way more than two lines since it's so long. Wow, check out this length !", { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)
                if (Hovered) then

                end
                if (Active) then

                end
                if (Selected) then

                end
            end, RMenu:Get('showcase', 'submenu'))

        end, function()
            ---Panels
        end)
    end

    if RageUI.Visible(RMenu:Get('showcase', 'submenu')) then
        RageUI.DrawContent({ header = true, glare = true, instructionalButton = true }, function()
            ---Items

            for i = 1, items do
                RageUI.Button(string.format("Items - %s", i), "Sample description that takes more than one line. Moreso, it takes way more than two lines since it's so long. Wow, check out this length !", { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)

                end)
            end


        end, function()
            ---Panels
        end)
    end

end, 1)

RegisterCommand('delete-basic-rmenu', function()
    --- You can remove unnecessary menus to optimize the use of RAM in your scripts.
    RMenu:Delete('showcase', 'main')
    RMenu:Delete('showcase', 'submenu')
end, false)
