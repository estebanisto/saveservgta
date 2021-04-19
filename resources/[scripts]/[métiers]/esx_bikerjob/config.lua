Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 20
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 100, g = 120, b = 155 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.BikerStations = {

  Biker = {

    AuthorizedWeapons = {
    { name = 'WEAPON_COMBATPISTOL',     price = 4000 },
    { name = 'WEAPON_ASSAULTSMG',       price = 15000 },
    { name = 'WEAPON_ASSAULTRIFLE',     price = 25000 },
    { name = 'WEAPON_FLARE',            price = 8000 },
    { name = 'WEAPON_SWITCHBLADE',      price = 500 },
	  { name = 'WEAPON_REVOLVER',         price = 6000 },
	  { name = 'WEAPON_POOLCUE',          price = 100 },
	  
    },

	  AuthorizedVehicles = {
		  { name = 'BF400',    label = 'MotoCross' },
		  { name = 'bati',  label = 'Moto de Course' },
		  { name = 'chimera',     label = 'Moto 3 Roue' },
		  { name = 'speedo',     label = 'Cammionette' },
	  },

    Armories = {
      { x = 988.352, y = -97.522, z = 74.845 }, 
    },

    Vehicles = {
      {
        Spawner    = { x = 978.814, y = -127.751, z = 73.980 }, 
        SpawnPoint = { x = 979.809, y = -133.977, z = 73.450 }, 
        Heading    = 58.518, 
      }
    },

    VehicleDeleters = {
      { x = 979.208, y = -134.075, z = 73.508 }, 
    },

    BossActions = {
      { x = 984.571, y = -91.595, z = 74.849 } 
    },

  },

}