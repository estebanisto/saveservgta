Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 20
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 150, g = 250, b = 104 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'fr'

Config.GangStations = {

  Gang = {

	  AuthorizedVehicles = {
      { name = 'Primo',  label = 'Primo' },
      { name = 'Chino',  label = 'Chino' },
		  { name = 'Manchez',     label = 'Manchez' },
		  { name = 'bmx',   label = 'BMX' },
	  },

    Armories = {
      { x = 109.398, y = -1964.104, z = 20.94},
    },

    Vehicles = {
      {
        Spawner    = { x = 84.37, y = -1966.8, z = 20.93 },
        SpawnPoint = { x = 86.46, y = -1970.635417480469, z = 19.74 },
        Heading    = 317.699890,
      }
    },

    VehicleDeleters = {
      { x = 103.09, y = -1955.00, z = 19.718830413818 },
      
    },

    BossActions = {
      { x = 113.475, y = -1960.163, z = 20.76 },
    },

  },

}
