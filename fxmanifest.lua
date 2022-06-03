fx_version 'cerulean'
game 'gta5'

name "Police-Mark"
author 'Ludaro'
description 'Script that adds marker to all police if item is there'
version '1.0'

shared_scripts {
	'Config.lua',
    '@es_extended/imports.lua'
}

client_scripts {
	--'@NativeUILua_Reloaded/src/NativeUIReloaded.lua',
  --  '@NativeUI/NativeUI.lua',
	'client.lua'
}

server_scripts {
	'server.lua',
	'@mysql-async/lib/MySQL.lua'
}
