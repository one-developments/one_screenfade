fx_version 'adamant'
game 'gta5'

name 'one_screenfade'
description 'Customized screen fade with logo display by One scriptS'
author 'One scriptS'
version '1.0.0'
lua54 'yes'

shared_scripts {
    'shared/*.lua'
}

client_scripts {
        'client/main.lua',
    'client/_screenFade.lua',

}

ui_page 'html/index.html'

files {
    'html/**'
}
