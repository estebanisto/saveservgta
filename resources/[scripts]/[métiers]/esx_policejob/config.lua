Config                            = {}



Config.DrawDistance               = 100.0

Config.MarkerType                 = 20

Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }

Config.MarkerColor                = { r = 50, g = 50, b = 204 }



Config.EnablePlayerManagement     = true

Config.EnableArmoryManagement     = true

Config.EnableESXIdentity          = true -- enable if you're using esx_identity

Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds

Config.EnableLicenses             = true -- enable if you're using esx_license



Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends

Config.HandcuffTimer              = 10 * 60000 -- 10 mins



Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society



Config.MaxInService               = -1

Config.Locale                     = 'fr'



Config.WhitelistedCops = {

	'police'

}



Config.PoliceStations = {



	LSPD = {



		Blip = {

			Coords  = vector3(425.1, -979.5, 30.7),

			Sprite  = 60,

			Display = 4,

			Scale   = 0.8,

			Colour  = 29

		},



		Cloakrooms = {

			vector3(452.6, -992.8, 29.8)

		},



		Armories = {

			--vector3(451.618, -979.871, 30.689)

		},



		Vehicles = {

			{

				Spawner = vector3(454.6, -1017.4, 27.6),

				InsideShop = vector3(228.5, -993.5, -99.5),

				SpawnPoints = {

					{ coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0 },

					{ coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0 },

					{ coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0 },

					{ coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0 }

				}

			},



			{

				Spawner = vector3(-1077.603, -847.614, 4.88),

				InsideShop = vector3(228.5, -993.5, -99.0),

				SpawnPoints = {

					{ coords = vector3(-1072.859,  -851.66, 4.88), heading = 220.12, radius = 6.0 },

					{ coords = vector3(-1059.937, -849.09, 4.867), heading = 2224.33, radius = 6.0 }

				}

			}

		},



		Helicopters = {

			{

				Spawner = vector3(461.1, -981.5, 43.6),

				InsideShop = vector3(477.0, -1106.4, 43.0),

				SpawnPoints = {

					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }

				}

			}

		},



		BossActions = {

			vector3(451.999, -975.014, 30.689),
			vector3(-1109.945,  -830.912, 34.360)

		}



	}



}



Config.AuthorizedWeapons = {

	recruit = {

		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 1 },

		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },

		{ weapon = 'WEAPON_STUNGUN', price = 1500 },

		{ weapon = 'WEAPON_FLASHBANG', price = 1500 },

		{ weapon = 'WEAPON_FLASHLIGHT', price = 80 }

	},



	officer = {

		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 1 },

		{ weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 1 },

		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },

		{ weapon = 'WEAPON_STUNGUN', price = 500 },

		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }

	},



	sergeant = {

		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },

		{ weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },

		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },

		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },

		{ weapon = 'WEAPON_STUNGUN', price = 500 },

		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }

	},



	intendent = {

		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },

		{ weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },

		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },

		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },

		{ weapon = 'WEAPON_STUNGUN', price = 500 },

		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }

	},



	lieutenant = {

		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },

		{ weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },

		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },

		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },

		{ weapon = 'WEAPON_STUNGUN', price = 500 },

		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }

	},



	chef = {

		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },

		{ weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },

		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },

		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },

		{ weapon = 'WEAPON_STUNGUN', price = 500 },

		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }

	},



	boss = {

		{ weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },

		{ weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },

		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },

		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },

		{ weapon = 'WEAPON_STUNGUN', price = 500 },

		{ weapon = 'WEAPON_FLASHLIGHT', price = 0 }

	}

}



Config.AuthorizedVehicles = {

	Shared = {

		{ model = 'police2', label = 'Police Charger', price = 1 }

	},



	recruit = {

		{ model = 'police2', label = 'Police Charger', price = 1 }

	},



	officer = {

		{ model = 'police3', label = 'Police Ford SUV', price = 1 }

	},



	sergeant = {

		{ model = 'police3', label = 'Police Ford SUV', price = 1 },

		{ model = 'police6', label = 'Police 8 ', price = 1 },

		{ model = 'bike1', label = 'Police Moto 1', price = 1 }

	},



	intendent = {

	},



	lieutenant = {

		{ model = 'police3', label = 'Police Ford SUV', price = 1 },

		{ model = 'bike1', label = 'Police Moto 1', price = 1 },

		{ model = 'policet', label = 'Police Van', price = 1 },

		{ model = 'riot', label = 'Police Riot', price = 1 }

	},



	chef = {

		{ model = 'police3', label = 'Police Ford SUV', price = 1 },

		{ model = 'police8', label = 'Police 8 ', price = 1 },

		{ model = 'police6', label = 'Police 6 ', price = 1 },

		{ model = 'bike1', label = 'Police Moto 1', price = 1 },

		{ model = 'policet', label = 'Police Van', price = 1 },

		{ model = 'riot', label = 'Police Riot', price = 1 }

	},



	boss = {

		{ model = 'police3', label = 'Police Ford SUV', price = 1 },

		{ model = 'policet', label = 'Police Van', price = 1 },

		{ model = 'bike1', label = 'Police Moto 1', price = 1 },

		{ model = 'riot', label = 'Police Riot', price = 1 },

		{ model = 'pol718', label = 'Porsche Police', price = 1 }

	}

}



Config.AuthorizedHelicopters = {

	recruit = {},



	officer = {},



	sergeant = {},



	intendent = {},



	lieutenant = {

		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }

	},



	chef = {

		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }

	},



	boss = {

		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }

	}

}



-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements



Config.Uniforms = {

	recruit_wear = {

		male = {

			['tshirt_1'] = 49,  ['tshirt_2'] = 0,

			['torso_1'] = 31,   ['torso_2'] = 0,

			['decals_1'] = 15,   ['decals_2'] = 0,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},

	officer_wear = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 15,   ['decals_2'] = 1,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},

	sergeant_wear = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 15,   ['decals_2'] = 3,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

 			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},

	intendent_wear = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 15,   ['decals_2'] = 4,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},

	lieutenant_wear = { -- currently the same as intendent_wear

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 15,   ['decals_2'] = 5,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 15,   ['decals_2'] = 5,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},

	chef_wear = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 15,   ['decals_2'] = 6,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},

	boss_wear = { -- currently the same as chef_wear

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 15,   ['decals_2'] = 7,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	tenu_lspd = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 102,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	tenu_hiv = {

		male = {

			['tshirt_1'] = 65,  ['tshirt_2'] = 0,

			['torso_1'] = 123,   ['torso_2'] = 1,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 45,  ['tshirt_2'] = 0,

			['torso_1'] = 119,   ['torso_2'] = 1,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 7,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	tenu_ma = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 101,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 20,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 92,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 3,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	tenu_swat = {

		male = {

			['tshirt_1'] = 49,  ['tshirt_2'] = 0,

			['torso_1'] = 49,   ['torso_2'] = 1,

			['decals_1'] = 3,   ['decals_2'] = 0,

			['arms'] = 33,

			['pants_1'] = 31,   ['pants_2'] = 1,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = 117,  ['helmet_2'] = 1,

                        ['bags_1'] = 44,

			['chain_1'] = 3,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 7,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0,

                        ['glasses_1'] = 25,  ['glasses_2'] = 1

		},

		female = {

			['tshirt_1'] = 33,  ['tshirt_2'] = 0,

			['torso_1'] = 84,   ['torso_2'] = 1,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	tenu_swatgr = { -- currently the same as chef_wear

		male = {

			['tshirt_1'] = 49,  ['tshirt_2'] = 0,

			['torso_1'] = 49,   ['torso_2'] = 2,

			['decals_1'] = 3,   ['decals_2'] = 0,

			['arms'] = 33,

			['pants_1'] = 31,   ['pants_2'] = 2,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = 117,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['chain_1'] = 3,    ['chain_2'] = 0,

                        ['bproof_1'] = 7,  ['bproof_2'] = 0,

			['glasses_1'] = 25,  ['glasses_2'] = 1

		},

		female = {

			['tshirt_1'] = 33,  ['tshirt_2'] = 0,

			['torso_1'] = 43,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 49,

			['pants_1'] = 90,   ['pants_2'] = 2,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = 74,  ['helmet_2'] = 0,

                        ['bags_1'] = 44,

			['mask_1'] = 56,  ['mask_2'] = 1,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['bproof_1'] = 7,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	tenu_doag = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 102,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 19,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 7,  ['bproof_2'] = 4,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 93,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 31,

			['pants_1'] = 61,   ['pants_2'] = 0,

			['shoes_1'] = 25,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 1,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 7,  ['bproof_2'] = 3,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	tenu_sahp = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 32,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 12,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 33,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 1,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 33,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 14,

			['pants_1'] = 31,   ['pants_2'] = 0,

			['shoes_1'] = 24,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 0,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	tenu_sahpg = {

		male = {

			['tshirt_1'] = 53,  ['tshirt_2'] = 0,

			['torso_1'] = 32,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 12,

			['pants_1'] = 59,   ['pants_2'] = 0,

			['shoes_1'] = 33,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 12,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		},

		female = {

			['tshirt_1'] = 27,  ['tshirt_2'] = 0,

			['torso_1'] = 33,   ['torso_2'] = 0,

			['decals_1'] = 0,   ['decals_2'] = 0,

			['arms'] = 14,

			['pants_1'] = 31,   ['pants_2'] = 0,

			['shoes_1'] = 24,   ['shoes_2'] = 0,

			['helmet_1'] = -1,  ['helmet_2'] = 0,

			['chain_1'] = 0,    ['chain_2'] = 0,

			['mask_1'] = -1,  ['mask_2'] = 0,

			['bproof_1'] = 11,  ['bproof_2'] = 0,

			['ears_1'] = 2,     ['ears_2'] = 0

		}

	},



	bullet_wear = {

		male = {

			['bproof_1'] = 12,  ['bproof_2'] = 3

		},

		female = {

			['bproof_1'] = 11,  ['bproof_2'] = 3

		}

	}



}