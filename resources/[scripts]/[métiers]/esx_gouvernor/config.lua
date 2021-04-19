Config              = {}
Config.DrawDistance = 100.0
Config.MarkerColor  = {r = 0, g = 0, b = 240}
Config.EnableSocietyOwnedVehicles = true 
Config.EnablePlayerManagement     = true
Config.MaxInService               = 8
Config.Locale = 'fr'
Config.ImpotInterval        = 24 * 60 * 60000 -- 1 mois
Config.ImpotValue			= 5

Config.Cloakrooms = {
	CloakRoom = { 
		Pos   = {x = -551.058, y = -193.363, z = 38.219},
		Size  = {x = 1.0, y = 1.0, z = 1.0},
		Type  = 20
	}
}

Config.Zones = {
	OfficeActions = { 
		Pos   = {x = -552.541, y = -195.034, z = 69.975},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 20
	},

	CarGarage = {
		Pos   = { x = -515.987, y = -251.213, z = 35.666 },
		Size  = { x = 1.0, y = 1.0, z = 1.0 },
		Type  = 20,
		InsideShop = vector3(-515.987, -251.213, 35.666),
		SpawnPoints = {
			{ coords = vector3(-517.890, -263.818, 35.363), heading = 140.363, radius = 6.0 },

		}
	},

	HelicoEnter = { 
		Pos   = {x = 138.03, y = -765.38, z = 242.15},
		Size  = {x = 1.0, y = 1.0, z = 1.0},
		Type  = 34
	},

	HelicoInside = { 
		Pos   = {x = -499.70416259766, y = -322.44952392578, z = 72.168121337891},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	HelicoExit = { 
		Pos   = {x = -499.54034423828, y = -324.3981628418, z = 72.168121337891},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},

	HelicoOutside = { -- spawn interieur batiment president
		Pos   = {x = 135.32885742188, y = -764.09942626953, z = 242.15211486816},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	HelicoSpawner = { 
		Pos   = {x = -508.40, y = -224.123, z = 36.636},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 20
	},

	HelicoSpawnPoint = {
		Pos   = {x = -503.531, y = -235.794, z = 36.384}, 
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	HelicoDeleter = { 
		Pos   = {x = -503.495, y = -235.854, z = 36.38},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 20
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'stretch', label = 'Limousine', price = 10 },
		{ model = 'fbi2', label = 'SUV', price = 10 }
	},
	security_gouvernor = {},
	assistant = {},
	boss = {}
}