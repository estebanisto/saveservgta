Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 20
Config.MarkerSize                 = { x = 1.0, y = 1.0, z = 1.0 }
Config.MarkerColor                = { r = 250, g = 155, b = 100 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.oneilStations = {

  oneil = {

    Blip = {
--      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_PISTOL50',           price = 4*9000 },
      { name = 'WEAPON_ASSAULTRIFLE',       price = 4*30000 },
      { name = 'WEAPON_SAWNOFFSHOTGUN',     price = 4*1125000 },
      { name = 'WEAPON_MOLOTOV',            price = 4*1500000 },
      { name = 'WEAPON_BAT',                price = 4*600000 },
    },

	  AuthorizedVehicles = {
		  { name = 'Bodhi2',   label = 'Véhicule' },
		  { name = 'avarus',      label = 'Moto Avarus' },
		  { name = 'BfInjection',    label = '4x4' },
	  },

    Cloakrooms = {
      { x = 986.94677734375, y = -92.968696594238, z = -73.84593963623 },
    },

    Armories = {
      { x = 2445.828, y = 4983.3017, z = 46.8097 },
    },

    Vehicles = {
      {
        Spawner    = { x = 2459.490, y = 4956.030, z = 45.131 },
        SpawnPoint = { x = 2460.624, y = 4953.570, z = 44.136 },
        Heading    = 135.270,
      }
    },

    --[[Helicopters = {
      {
        Spawner    = {468.73999023438 -1299.3319091797 32.47146987915 },
        Spawner    = { x = 468.73999023438, y = -1299.3319091797, z = 32.47146987915 },
        SpawnPoint = { x = 461.86053466797, y = -1297.3302001953, z = 32.478931427002 },
        Heading    = 82.760,
      }
    },--]]

    VehicleDeleters = {
      { x = 2438.055, y = 4941.039, z = 43.937 },
    },

    BossActions = {
      { x = 2440.646, y = 4977.637, z = 46.810 }
    },

  },

}
