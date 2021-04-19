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
      { x = 345.347, y = -2025.231, z = 22.394},
    },

    Vehicles = {
      {
        Spawner    = { x = 328.849, y = -2046.77, z = 20.816 },
        SpawnPoint = { x = 329.765, y = -2041.410, z = 20.839 },
        Heading    = 46.414,
      }
    },

    VehicleDeleters = {
      { x = 324.863, y = -2037.191, z = 20.734 },
      
    },

    BossActions = {
      { x = 339.980, y = -2020.892, z = 22.394 },
    },

  },

}
