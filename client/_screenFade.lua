

local ShowUiCurrect = false

CreateThread(function()
    while true do
        Wait(10)
        if IsScreenFadedOut() and not ShowUiCurrect then
            DisplayLoad(500)
            ShowUiCurrect = true
        end
        if IsScreenFadedIn() and ShowUiCurrect then
            ShowUiCurrect = false
            Wait(500)
            HideLoad(500)
        end
    end
end)



DoScreenFadeIn(500)

CreateThread(function ()
    Wait(1000)
    exports['one_screenfade']:DisplayLoad(500, {
    logo = 'img/one.png',               -- Path to the logo image.
    animation_logo = 'fill-up-animation',  -- Type of animation for the logo.
    color1 = '#000',                     -- Primary color used in the fade effect.
    color2 = '#010101',                  -- Secondary color used in the fade effect.
    spinner = false,                      -- Enable spinner during the fade-out.
    loadingText = 'Loading',             -- Custom text displayed during loading.
    colorSpinner = '#0f0f'               -- Color of the spinner.
    })
    Wait(2000)
    exports['one_screenfade']:HideLoad(1000)
    Wait(2000)
    DoScreenFadeOut(1000)
    Wait(2000)
    DoScreenFadeIn(1000)
    Wait(2000)
    exports['one_screenfade']:DisplayLoad(500, {
    logo = 'img/qbcore.png',               -- Path to the logo image.
    animation_logo = 'scale-animation',  -- Type of animation for the logo.
    color1 = '#380C15',                     -- Primary color used in the fade effect.
    color2 = '#21070C',                  -- Secondary color used in the fade effect.
    spinner = true,                      -- Enable spinner during the fade-out.
    loadingText = 'Loading',             -- Custom text displayed during loading.
    colorSpinner = '#DB133C'               -- Color of the spinner.
    })
    Wait(2000)
    exports['one_screenfade']:HideLoad(1000)
end)