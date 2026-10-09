-- monitor and other graphical session configs
-- https://wiki.hypr.land/Configuring/Monitors/
hl.monitor({
    output                  = "HDMI-A-1",
    mode                    = "1920x1080@120",
    position                = "0x0",
    scale                   = 1
})

hl.monitor({
    output                  = "HDMI-A-2",
    mode                    = "1920x1080@60",
    position                = "1920x0",
    scale                   = 1
})

-- https://wiki.hypr.land/configuring/extra/xwayland/
hl.config({
    xwayland = {
        force_zero_scaling  = true
    }
})
