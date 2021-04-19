resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_script '@mysql-async/lib/MySQL.lua'




server_scripts {
	'garage/@es_extended/locale.lua',
	'garage/@locales/en.lua',
	'garage/config.lua',
	'garage/server/server.lua'
}
client_scripts {
	'garage/@es_extended/locale.lua',
	'garage/@locales/en.lua',
	'garage/config.lua',
	'garage/client/client.lua'
}


