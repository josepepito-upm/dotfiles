-- WINDOW, WORKSPACE AND LAYER RULES --
-- https://wiki.hypr.land/configuring/core/rules/
local defaults = require("config.user-defaults")

-- Rounding and border rules
hl.window_rule({
    match       = { class = "^(zenity|yad)$" },
    effect      = { rounding = 20 }
})
hl.window_rule({
    match       = { class = "vesktop", title = "" },
    effect      = { rounding = 20 }
})
hl.window_rule({
    match       = { title = "^((?i)info|attention|error|warning|question|attention|confirm)$" },
    effect      = { rounding = 20 }
})
hl.window_rule({
    match       = { class = "ONLYOFFICE" },
    effect      = { rounding = 5 }
})
hl.window_rule({
    match       = { class = " ^(winboat-).*$" },
    effect      = { rounding = 7 }
})

-- Floating rules
hl.window_rule({
    match       = { class = "^(?i)" .. defaults.fileManager .. "$",
                    title = "^((?i).*(operation|rename|copy|propert|mov|progress|confirm).*)$" },
    effect      = { float = true }
})
hl.window_rule({
    match       = { title = "^((?i).*(open|save).*)$" },
    effect      = { float = true }
})
hl.window_rule({
    match       = { class = "^(xdg-desktop-portal).*$" },
    effect      = { float = true, center = true }
})
hl.window_rule({
    match       = { class = "winecfg" },
    effect      = { float = true, center = true }
})
hl.window_rule({
    match       = { modal = true },
    effect      = { float = true, center = true }
})
hl.window_rule({
    match       = { class = "CachyOSHello" },
    effect      = { float = true }
})

-- Default apps rules
hl.window_rule({
    match       = { class = defaults.music },
    effect      = {
        float       = true,
        center      = true,
        size        = { 1400, 900 },
        workspace   = "musicPlayer"
    }
})
hl.window_rule({
    match       = { class = defaults.messageClient },
    effect      = {
        float       = true,
        center      = true,
        size        = { 1200, 800 },
        workspace   = "chat"
    }
})
hl.window_rule({
    match       = { class = defaults.discordClient },
    effect      = {
        float       = true,
        center      = true,
        size        = { 1500, 1000 },
        workspace   = "discordClient"
    }
})
-- Noctalia rules
hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})

-- Picture-In-Picture
hl.window_rule({
    match       = { class = "Picture-in-Picture" },
    effect      = {
        float       = true,
        pin         = true,
        move        = { 1240, 695 },
        size        = { "(monitor_w*0.25)", "(monitor_h*0.25)" }
    }
})

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})
