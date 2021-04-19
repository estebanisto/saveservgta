resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_script '@mysql-async/lib/MySQL.lua'
server_script '@es_extended/locale.lua'
server_script '@async/async.lua'
server_script 'locales/fr.lua'

client_script '@es_extended/locale.lua'
client_script 'locales/fr.lua'

client_script "core/pause/server_name.lua"

client_scripts {
	'core/tracker/client/main.lua'
}

server_scripts {
	'core/tracker/server/main.lua'
}

server_scripts {
	'core/braquagebank/server/main.lua'
  }

  server_script "core/WeazelNewsCam/server.lua"
  client_script "core/WeazelNewsCam/client.lua"

server_script 'core/utils/server/main.lua'
client_script 'core/utils/client/main.lua'

client_script 'core/recule_arme/client.lua'

client_scripts {
	'@es_extended/locale.lua',
	'core/narshop/locales/fr.lua',
	'core/narshop/config.lua',
	'core/narshop/client/main.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'core/narshop/locales/fr.lua',
	'core/narshop/config.lua',
	'core/narshop/server/main.lua'
}


client_scripts {
	'core/announce/client.lua'
 }
 
 server_scripts{
	 'core/announce/server.lua'
 
 }

client_script {
	'core/client/weapons.lua',
}

client_scripts {
    "core/policearmory/config.lua",
    "core/policearmory/client/main.lua"
}

server_scripts {
    "core/policearmory/config.lua",
    "core/policearmory/server/main.lua"
}

client_script "core/PiggyBack/cl_piggyback.lua"
server_script "core/PiggyBack/sv_piggyback.lua"

dependency "essentialmode"
dependency "es_extended"
dependency "async"
