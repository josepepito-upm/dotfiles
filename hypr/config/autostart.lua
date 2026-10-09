-- Programs and scripts to start from the start of session
-- https://wiki.hypr.land/configuring/core/autostart/
local defaults = require("config.user-defaults")

hl.on("hyprland.start", function ()
    hl.exec_cmd(defaults.barOrShell)
    hl.exec_cmd("hypridle")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)
