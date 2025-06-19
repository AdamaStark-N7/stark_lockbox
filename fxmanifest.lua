fx_version 'cerulean'

use_experimental_fxv2_oal 'yes'

lua54 'yes'

game 'gta5'

name 'stark_lockbox'

author 'Adama Stark'

version '2.3.0'

description 'A Vehicle Lockbox Script for Qbox & QBCore'

shared_script {
    'config.lua',
    '@ox_lib/init.lua'
}

client_scripts{
    'bridge/client/**.lua',
    'client/*.lua',
    -- '@qbx_core/modules/playerdata.lua' -- For Use With The Qbox Framework, Can Be Commented Out or Removed If Not Used
}

server_scripts{
    'bridge/server/**.lua',
    'server/*.lua'
}
