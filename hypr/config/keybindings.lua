-- Keybindings
-- https://wiki.hypr.land/configuring/core/binds/
local defaults = require("config.user-defaults")
local mainMod = "SUPER"                                                 -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(defaults.terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(defaults.fileManager))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(defaults.browser))
hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd(defaults.menu))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.exec_cmd(defaults.sessionMenu))
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(defaults.screenshot))

hl.bind(mainMod .. " + Q", hl.dsp.window.close())

hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))  --toggle floating
hl.bind(mainMod .. " + T", hl.dsp.window.fullscreen)                    --toggle fullscreen
-- hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))             -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- SPECIAL WORKSPACES --
-- Special Workpace (scrathpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(mainMod .. " + CONTROL + RETURN", hl.dsp.exec_cmd(defaults.terminal, {
    workspace   = "special:magic",
    float       = true,
    center      = true,
    size        = {1280, 720}
}))
-- Hidden workspace
hl.bind(mainMod .. " + H", hl.dsp.workspace.toggle_special("hidden"))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ workspace = "special:hidden" }))

--Other special workpaces
hl.bind(mainMod .. " + M", hl.dsp.workspace.toggle_special("musicPlayer"))      -- Music player
hl.bind(mainMod .. " + C", hl.dsp.workspace.toggle_special("chat"))             -- Messages 
hl.bind(mainMod .. " + D", hl.dsp.workspace.toggle_special("discord"))          -- Discord

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
