fx_version 'cerulean'

lua54 'yes'

game 'gta5'

name 'stark_lockbox'

author 'Adam Biegert'

version '2.2.0'

description 'A Vehicle Lockbox Script for Qbox & QBCore'

shared_script {
    'config.lua',
    '@ox_lib/init.lua' -- Can be commented out or removed if you don't want to use Ox
}

client_scripts{
    'bridge/client/**.lua',
    'client/*.lua',
    -- '@qbx_core/modules/playerdata.lua' -- For Use With The Qbox Framework, Can Be Commented Out or Removed If Not Used
}

server_scripts{
    'bridge/server/**.lua'
}