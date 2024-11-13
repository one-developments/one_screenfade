

# one_screenfade Screen Fade With Your Logo

![License](https://img.shields.io/badge/license-MIT-blue) ![Platform](https://img.shields.io/badge/platform-FiveM-orange)

> **Not a Loading Screen!** This script replaces the default black screen displayed with `DoScreenFadeOut` by introducing a beautiful logo animation fade, adding a unique touch to your server.

### [💬 Join our Discord for Support](https://discord.gg/VvcnT3J5CFK)

---

## Features

- Easy integration with native FiveM `DoScreenFadeIn` and `DoScreenFadeOut` functions.
- Smooth, customizable logo animations during screen fade events.
- Lightweight and optimized for performance.
- Works out-of-the-box with no configuration required.

---

## Quick Start

Screen fade works with the default FiveM natives—just start the script and enjoy.


---

### Screen Fade Defualt

To activate the screen fade, use the following native commands:

- Show Fade: `DoScreenFadeOut(500)`
- Hide Fade: `DoScreenFadeIn(500)`

For more details, see the [FiveM Docs](https://docs.fivem.net/natives/?_0xD4E8E24955024033).

---


### Displaying Fade (For Custom Loading Each Script )
To show the fade effect:
```lua
exports['one_screenfade']:DisplayLoad(500, {
    logo = 'img/one.png',               -- Path to the logo image.
    animation_logo = 'fill-up-animation', -- Type of animation for the logo.
    color1 = '#000',                     -- Primary color used in the fade effect.
    color2 = '#010101',                  -- Secondary color used in the fade effect.
    spinner = false,                      -- Enable spinner during the fade-out.
    loadingText = 'Loading',             -- Custom text displayed during loading.
    colorSpinner = '#0f0f'               -- Color of the spinner.
})
```

### Hiding Fade
To hide the fade effect:
```lua
exports['one_screenfade']:HideLoad(1000)
```

### Preview
![onescripts](https://i.hizliresim.com/p86u352.jpg)

## Configuration

### `Config.lua`

```lua
Config = {}

Config.DefaultTheme = {
    logoSettings = {
        logo = "img/one.png",          -- Default logo
        shadow = false,                -- Enable shadow animation?
        animation_logo = "fill-right-animation", -- Logo animation
    },
    background = {
        color1 = '#1D1045',            -- Background color 1
        color2 = '#000000',            -- Background color 2
    },
    loadingScreen = {
        spinnerIsOn = false,           -- Enable spinner by default?
        spinnerSettings = {
            size = 90,                 -- Spinner size (0-100)
            position = "belowLogo",    -- Spinner position
            style = 'load8',           -- Spinner style
            defaultText = "LOADING...", -- Spinner text
            color = "#EC83BC"          -- Spinner and text color
        },
    }
}
```

### Logo Animations

- **`fill-up-animation`**: Reveals logo from bottom up.
- **`fill-bottom-animation`**: Unveils logo from top down.
- **`fill-right-animation`**: Shows logo from left to right.
- **`fill-left-animation`**: Displays logo from right to left.
- **`bounce-animation`**: Bounces the logo vertically.
- **`fade-animation`**: Fades logo in and out smoothly.
- **`shake-animation`**: Shakes the logo.
- **`zoom-animation`**: Zooms in and out.
- **`rotate-scale-animation`**: Rotates and scales.
- **`slide-animation`**: Slides from top.
- **`rotate-animation`**: Continuously rotates.
- **`flip-animation`**: Flips around center.
- **`scale-animation`**: Scales up and down.
- **`scale-animation-x2`**: Double scaling effect.
- **`invert-animation`**: Inverts colors.

---

## Contributing

Contributions are always welcome! If you can help improve this documentation or have ideas for new features, submit an issue or pull request.

### How You Can Help:
- Documenting code for easier understanding.
- Reporting bugs and suggesting new features.
- Providing feedback on animations and effects.

### [💬 Join our Discord for Support and Contributions](https://discord.gg/YOUR_DISCORD_LINK)
