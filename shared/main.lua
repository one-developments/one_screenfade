Config = {}


Config.DefaultTheme = {

    logoSettings = {
        logo = "img/esx.png", --- your defualt logo 
        shadow = true, -- logo have animation in background ?
        animation_logo = "fill-right-animation", -- your logo animation
        },
        background = {
            color1 = '#010101', -- background  color 1
            color2= '#000000', --- background color 2
        },
        loadingScreen = {
            spinnerIsOn = false, -- defualt have spinner ?
            spinnerSettings = {
                size = 90, --- spinner size 0% - 100%
                position = "belowLogo", -- spinner position
                style = 'load8', --- spinner Style
                defaultText = "LOADING...", -- defualt spinner text
                color = "#EC83BC"  --- spinner and text color
            },
    }
}

-- fill-up-animation: Reveals the logo from the bottom upwards.
-- fill-bottom-animation: Unveils the logo from the top downwards.
-- fill-right-animation: Shows the logo from left to right.
-- fill-left-animation: Displays the logo from right to left.
-- bounce-animation: Makes the logo bounce vertically.
-- fade-animation: Fades the logo in and out smoothly.
-- shake-animation: Adds a shaking effect to the logo.
-- zoom-animation: Zooms the logo in and out.
-- rotate-scale-animation: Rotates and scales the logo alternately.
-- slide-animation: Slides the logo from the top.
-- rotate-animation: Continuously rotates the logo.
-- flip-animation: Flips the logo around the center axis.
-- scale-animation: Scales the logo up and down.
-- scale-animation-x2: Doubles the scaling effect on the logo.
-- invert-animation: Inverts the colors of the logo.