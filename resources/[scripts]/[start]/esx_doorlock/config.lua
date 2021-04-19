Config = {}
Config.Locale = 'fr'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	{
		textCoords = vector3(434.7, -982.0, 31.5),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_door01',
				objYaw = -90.0,
				objCoords = vector3(434.7, -980.6, 30.8)
			},

			{
				objName = 'v_ilev_ph_door002',
				objYaw = -90.0,
				objCoords = vector3(434.7, -983.2, 30.8)
			}
		}
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objYaw = 90.0,
		objCoords  = vector3(449.6, -986.4, 30.6),
		textCoords = vector3(450.1, -986.3, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objYaw = 90.0,
		objCoords  = vector3(464.3, -984.6, 43.8),
		textCoords = vector3(464.3, -984.0, 44.8),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 90.0,
		objCoords  = vector3(461.2, -985.3, 30.8),
		textCoords = vector3(461.5, -986.0, 31.5),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = -90.0,
		objCoords  = vector3(452.6, -982.7, 30.6),
		textCoords = vector3(453.0, -982.6, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objYaw = -180.0,
		objCoords  = vector3(447.2, -980.6, 30.6),
		textCoords = vector3(447.2, -980.0, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To downstairs (double doors)
	{
		textCoords = vector3(444.6, -989.4, 31.7),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 180.0,
				objCoords = vector3(443.9, -989.0, 30.6)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 0.0,
				objCoords = vector3(445.3, -988.7, 30.6)
			}
		}
	},

	--
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 0.0,
		objCoords  = vector3(463.8, -992.6, 24.9),
		textCoords = vector3(463.3, -992.6, 25.1),
		authorizedJobs = { 'police','admin' },
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -90.0,
		objCoords  = vector3(462.3, -993.6, 24.9),
		textCoords = vector3(461.8, -993.3, 25.0),
		authorizedJobs = { 'police','admin' },
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.3, -998.1, 24.9),
		textCoords = vector3(461.8, -998.8, 25.0),
		authorizedJobs = { 'police','admin' },
		locked = true
	},


	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(463.4, -1003.5, 25.0),
		textCoords = vector3(464.0, -1003.5, 25.5),
		authorizedJobs = { 'police' },
		locked = true
	},


	-- COMICO GROSSE UPDATE TOUTES LES PORTES

	-- double porte escalier étage 
	{
		textCoords = vector3(443.02980, -991.941, 30.83931),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor006',
				objYaw = 90.0,
				objCoords  = vector3(443.02980, -991.941, 30.83931),
			},

			{
				objName = 'v_ilev_ph_gendoor006',
				objYaw = 270.511,
				objCoords  = vector3(443.02980, -994.54120, 30.83931)
			}
		}
	},

	-- double porte en bas
	{
		textCoords = vector3(446.13040, -987.79460, 26.82346),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor003',
				objYaw = 270.511,
				objCoords  = vector3(446.13040, -987.79460, 26.82346),
			},

			{
				objName = 'v_ilev_ph_gendoor003',
				objYaw = 89.779,
				objCoords  = vector3(446.12080, -985.19560, 26.81977)
			}
		}
	},

	-- double porte en bas 2
	{
		textCoords = vector3(453.38870, -983.88710, 26.84486),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor003',
				objYaw = 359.832,
				objCoords  = vector3(453.38870, -983.88710, 26.84486),
			},

			{
				objName = 'v_ilev_ph_gendoor003',
				objYaw = 179.852,
				objCoords  = vector3(450.78930, -983.88710, 26.84486)
			}
		}
	},

	-- double porte en bas 3
	{
		textCoords = vector3(465.56880, -988.70340, 25.06827),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor003',
				objYaw = 90.442,
				objCoords  = vector3(465.56880, -988.70340, 25.06827),
			},

			{
				objName = 'v_ilev_ph_gendoor003',
				objYaw = 270.027,
				objCoords  = vector3(465.56880, -991.30420, 25.06827)
			}
		}
	},

	-- Cellule Mapping
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(467.19220, -996.45940, 25.00599),
		textCoords = vector3(467.19220, -996.45940, 25.00599),
		authorizedJobs = { 'police' },
		locked = true
	},

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(471.47550, -996.45940, 25.00599),
		textCoords = vector3(471.47550, -996.45940, 25.00599),
		authorizedJobs = { 'police' },
		locked = true
	},

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(475.75430, -996.45940, 25.00599),
		textCoords = vector3(475.75430, -996.45940, 25.00599),
		authorizedJobs = { 'police' },
		locked = true
	},

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(480.03010, -996.45940, 25.00599),
		textCoords = vector3(480.03010, -996.45940, 25.00599),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Salle interview 

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 360.0,
		objCoords  = vector3(480.03010, -1003.53800, 25.00599),
		textCoords = vector3(480.03010, -1003.53800, 25.00599),
		authorizedJobs = { 'police' },
		locked = true
	},

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 180.0,
		objCoords  = vector3(477.04970, -1003.55300, 25.01203),
		textCoords = vector3(477.04970, -1003.55300, 25.01203),
		authorizedJobs = { 'police' },
		locked = true
	},

	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(471.47470, -1003.53800, 25.01223),
		textCoords = vector3(471.47470, -1003.53800, 25.01223),
		authorizedJobs = { 'police' },
		locked = true
	},

-- double porte garage
{
	textCoords = vector3(447.21840, -999.00230, 30.78942),
	authorizedJobs = { 'police' },
	locked = true,
	distance = 2.5,
	doors = {
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 180.0,
			objCoords  = vector3(447.21840, -999.00230, 30.78942),
		},

		{
			objName = 'v_ilev_gtdoor',
			objYaw = 360.0,
			objCoords  = vector3(444.62120, -999.00100, 30.78866)
		}
	}
},










	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		textCoords = vector3(468.6, -1014.4, 27.1),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 0.0,
				objCoords  = vector3(467.3, -1014.4, 26.5)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 180.0,
				objCoords  = vector3(469.9, -1014.4, 26.5)
			}
		}
	},

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objYaw = 90.0,
		objCoords  = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	},

	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objYaw = 30.0,
		objCoords  = vector3(1855.1, 3683.5, 34.2),
		textCoords = vector3(1855.1, 3683.5, 35.0),
		authorizedJobs = { 'sheriff' },
		locked = false
	},


	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1844.9, 2604.8, 44.6),
		textCoords = vector3(1844.9, 2608.5, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1818.5, 2604.8, 44.6),
		textCoords = vector3(1818.5, 2608.4, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 12,
		size = 2
	},

	-- Unicorn
	{
		objName = 'prop_strip_door_01',
		objCoords  = vector3(127.9552, 1298.503, 29.41962),
		textCoords = vector3(127.9552, 1298.503, 29.41962),
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 12,
		size = 2
	},

        {
		textCoords = vector3(-565.95, -1629.20, 33.01),
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_rc_door1',
				objYaw = 85.0,
				objCoords = vector3(-565.95, -1630.22, 33.01)
			},

			{
				objName = 'v_ilev_rc_door1',
				objYaw = -95.0,
				objCoords = vector3(-565.95, -1628.44, 33.01)
			}
		}
	},

        {
		textCoords = vector3(-605.18, -1620.11, 33.01),
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_rc_door1',
				objYaw = -185.0,
				objCoords = vector3(-604.40, -1620.18, 33.01)
			},

			{
				objName = 'v_ilev_rc_door1',
				objYaw = -5.0,
				objCoords = vector3(-605.18, -1620.00, 33.01)
			}
		}
	},


	--
	-- Addons
	--


	-- Entrance Gate (Mission Row mod) https://www.gta5-mods.com/maps/mission-row-pd-ymap-fivem-v1


	-- BANQUE

	{ -- Entrer Principale (Double Portes)
		textCoords = vector3(231.9123, 215.0177, 106.6049),
		authorizedJobs = { 'banker' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'hei_prop_hei_bankdoor_new',
				objYaw = 115.0,
				objCoords = vector3(232.6054, 214.1584, 106.4049)
			},

			{
				objName = 'hei_prop_hei_bankdoor_new',
				objYaw = -65.0,
				objCoords = vector3(231.5123, 216.5177, 106.4049)
			}
		}
	},

	{ -- Entrer Secondaire (Double Portes)
		textCoords = vector3(259.306, 204.1005, 106.4049),
		authorizedJobs = { 'banker' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'hei_prop_hei_bankdoor_new',
				objYaw = 160.0,
				objCoords = vector3(260.6432, 203.2052, 106.4049)
			},

			{
				objName = 'hei_prop_hei_bankdoor_new',
				objYaw = -20.0,
				objCoords = vector3(258.2022, 204.1005, 106.4049)
			}
		}
	},

	{ -- Arrière Hall (Double Portes)
		textCoords = vector3(259.975, 214.2468, 107.4049),
		authorizedJobs = { 'banker' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'hei_prop_hei_bankdoor_new',
				objYaw = 250.0,
				objCoords = vector3(259.9831, 215.2468, 106.4049)
			},

			{
				objName = 'hei_prop_hei_bankdoor_new',
				objYaw = 70.0,
				objCoords = vector3(259.0879, 212.8062, 106.4049)
			}
		}
	},


{
	objName = 'v_ilev_bk_door',  -- Accès Escalier BAS
	objYaw = -20.0,
	objCoords  = vector3(237.7704, 227.87, 106.426),
	textCoords = vector3(237.7704, 227.87, 107.426),
	authorizedJobs = { 'banker' },
	locked = true
},

{
	objName = 'v_ilev_bk_door',  -- Accès Escalier HAUT
	objYaw = 160.0,
	objCoords  = vector3(236.5488, 228.3147, 110.4328),
	textCoords = vector3(236.5488, 228.3147, 110.4328),
	authorizedJobs = { 'banker' },
	locked = true
},

{
	objName = 'v_ilev_bk_door', -- Porte Accès Bureau Gauche
	objYaw = -20.0,
	objCoords  = vector3(266.3624, 217.5697, 110.4328),
	textCoords = vector3(266.3624, 217.5697, 111.4328),
	authorizedJobs = { 'banker' },
	locked = true
},

{
	objName = 'v_ilev_bk_door2', -- Gauche
	objYaw = 70.0,
	objCoords  = vector3(262.5366, 215.0576, 110.4328),
	textCoords = vector3(262.5366, 215.0576, 111.4328),
	authorizedJobs = { 'banker' },
	locked = true
},

{
	objName = 'v_ilev_bk_door2', -- Droite
	objYaw = 70.0,
	objCoords  = vector3(260.8579, 210.4453, 110.4328),
	textCoords = vector3(260.8579, 210.4453, 111.4328),
	authorizedJobs = { 'banker' },
	locked = true
},

{
	objName = 'v_ilev_bk_door', -- Porte Accès Bureau Droite
	objYaw = -110.0,
	objCoords  = vector3(256.6172, 206.1522, 110.4328),
	textCoords = vector3(256.6172, 206.1522, 111.4328),
	authorizedJobs = { 'banker' },
	locked = true
},


  

-- Unicorn

{
	objName = 'prop_strip_door_01', -- Entrer
	objYaw = 10.0,
	objCoords  = vector3(127.9552, -1298.503, 29.41962),
	textCoords = vector3(127.9552, -1298.503, 30.41962),
	authorizedJobs = { 'unicorn' },
	locked = true
},

{
	objName = 'v_ilev_door_orangesolid', -- Bureau 1
	objYaw = -60.0,
	objCoords  = vector3(113.9822, -1297.43, 29.41868),
	textCoords = vector3(113.9822, -1297.43, 30.41868),
	authorizedJobs = { 'unicorn' },
	locked = true
},

{
	objName = 'v_ilev_roc_door2', -- Bureau 2
	objYaw = 30.0,
	objCoords  = vector3(99.08321, -1293.701, 29.41868),
	textCoords = vector3(99.08321, -1293.701, 30.41868),
	authorizedJobs = { 'unicorn' },
	locked = true
},

{
	objName = 'prop_magenta_door', -- Derrière
	objYaw = -150.0,
	objCoords  = vector3(96.09197, -1284.854, 29.43878),
	textCoords = vector3(96.09197, -1284.854, 30.43878),
	authorizedJobs = { 'unicorn' },
	locked = true
},
----------------------------------------------------------------------
{
	objName = 'v_ilev_ph_gendoor006', -- Bahama 1
	objYaw = 34.0,
	objCoords  = vector3(-1387.026, -586.6138, 30.49563),
	textCoords = vector3(-1387.026, -586.6138, 30.49563),
	authorizedJobs = { 'bahama' },
	locked = true
},

{
	objName = 'v_ilev_ph_gendoor006', -- Bahama 2
	objYaw = -147.5,
	objCoords  = vector3(-1389.212, -588.0406, 30.49132),
	textCoords = vector3(-1389.212, -588.0406, 30.49132),
	authorizedJobs = { 'bahama' },
	locked = true
},

}