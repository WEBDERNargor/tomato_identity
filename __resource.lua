resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'


version '1.1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'client.lua'
}

ui_page 'index.html'

files {
	'index.html',
}

dependency 'es_extended'