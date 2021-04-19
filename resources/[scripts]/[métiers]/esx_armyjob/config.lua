Config                            = {}
Config.DrawDistance               = 600.0
Config.MarkerType                 = 20
Config.MarkerSize                 = { x = 2.5, y = 2.5, z = 1.5 }
Config.MarkerColor                = { r = 150, g = 200, b = 155 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.ArmyStations = {

  ARMY = {

    Blip = {
      Pos     = { x = -2307.806, y = 3390.877, z = 30.989 },
      Sprite  = 458,
      Display = 4,
      Scale   = 0.75,
      Colour  = 54,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMBATPISTOL',     price = 3000 },
      { name = 'WEAPON_SMG',      	  price = 12500 },
      { name = 'WEAPON_CARBINERIFLE',     price = 35000},
      { name = 'WEAPON_PUMPSHOTGUN',      price = 20000 },
      { name = 'WEAPON_STUNGUN',          price = 500 },
      { name = 'WEAPON_FLASHLIGHT',       price = 80 },
      { name = 'WEAPON_MG',               price = 60000 },
      { name = 'WEAPON_BULLPUPRIFLE',     price = 50000 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 85000 },
      { name = 'GADGET_PARACHUTE',        price = 300 },
    },

	AuthorizedVehicles = {
		{name = 'apc' , label = 'Transport blindé Tout-Terrain'},
		{name = 'barracks', label = 'Convoi'},
		{name = 'barracks2', label = 'Convoi sans remorque'},
		{name = 'crusader', label = 'Transport de Troupes'},
		{name = 'hauler2', label = 'Transport'},
		{name = 'phantom2', label = 'Transport'},
		{name = 'insurgent', label = 'Véhicule de combat blindé Tout-Terrain'},
		{name = 'insurgent2', label = 'Véhicule de transport blindé Tout-Terrain'},
		{name = 'insurgent3', label = 'Véhicule de combat blindé Tout-Terrain'},
		{name = 'savage', label = 'Hélicoptère de combat lourd'},
		{name = 'buzzard', label = 'Hélicoptère de combat'},
		{name = 'annihilator', label = 'Hélicoptère de combat mitrailleur'},
		{name = 'cargobob', label = 'Transport Aérien'},
	},

    Cloakrooms = {
      { x = -2390.397, y = 3287.108, z = 100.977 },
    },

    Armories = {
      { x = -2358.229, y = 3254.290, z = 31.810 },
    },

    Vehicles = {
      {
        Spawner    = { x = -1837.27, y = 2961.638, z = 31.810 },
        SpawnPoint = { x = -1835.524, y = 2986.822, z = 32.8099 },
        Heading    = 58.11,
      }
    },

    VehicleDeleters = {
      { x = -1803.676, y = 29993.124, z = 31.807 },
      { x = -2416.548, y = 3328.347, z = 31.828 },
      { x = -1859.540, y = 2957.451, z = 31.806 },
    },

    BossActions = {
      { x = -2349.319, y = 3266.631, z = 31.810 }
    },

  },

}
