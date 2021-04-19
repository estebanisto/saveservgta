Citizen.CreateThread(function()
	
	for i=1, #Config.Map, 1 do
		
		local blip = AddBlipForCoord(Config.Map[i].x, Config.Map[i].y, Config.Map[i].z)
		SetBlipSprite (blip, Config.Map[i].id)
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, 0.75)
		SetBlipColour (blip, Config.Map[i].color)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Config.Map[i].name)
		EndTextCommandSetBlipName(blip)
	end

end)

Citizen.CreateThread(function()
	for k,v in pairs(Config.Map) do
	local blip = AddBlipForRadius(v.x, v.y, v.z , 65.0) -- you can use a higher number for a bigger zone
	
		SetBlipHighDetail(blip, true)
		SetBlipColour(blip, 1)
		SetBlipAlpha (blip, 115)
	
	--local blip = AddBlipForCoord(v.x, v.y, v.z)
	
	---	SetBlipSprite (blip, v.sprite)
	--	SetBlipDisplay(blip, 4)
	--	SetBlipScale  (blip, 0.6)
	--	SetBlipColour (blip, v.color)
    --	SetBlipAsShortRange(blip, true)
	
		--BeginTextCommandSetBlipName("STRING")
		--AddTextComponentString(v.name)
		--EndTextCommandSetBlipName(blip)
	end
	end)