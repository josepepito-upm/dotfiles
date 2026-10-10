-- USER DEFAULTS --
-- Note: for noctalia, see https://docs.noctalia.dev/noctalia/compositor-settings/hyprland/
local defaults = {}
local ipc = "noctalia msg"

-- default programs
defaults.terminal       = "kitty"                                               -- Terminal
defaults.fileManager    = "thunar"                                              -- File manager
defaults.music          = "spotify"                                             -- Music player / Streaming music service
defaults.messageClient  = "ferdium"                                             -- Message client (like Ferdium, Rambox...)
defaults.discordClient  = "vesktop"                                             -- Discord client
defaults.browser        = "zen-browser"                                         -- Browser
defaults.screenshot     = "flameshot gui"                                       -- Screenshot utility

-- shell defaults
defaults.barOrShell     = "noctalia"                                            -- Status bar/shell
defaults.menu           = ipc .. "panel-toggle launcher"                        -- App launcher
defaults.sessionMenu    = ipc .. "panel-toggle session"                         -- Session menu (lock, suspend, shutdown...)
defaults.sessionLock    = ipc .. "session lock"                                 -- Session lock
defaults.settings       = ipc .. "settings-open"                                -- Shell Settings
defaults.windowSwitcher = ipc .. "window-switcher"                              -- Window switcher

-- brightness and volume control
defaults.volumeUp       = ipc .. "volume-up"
defaults.volumeDown     = ipc .. "volume-down"
defaults.mute           = ipc .. "volume-mute"
defaults.brightnessUp   = ipc .. "brightnessUp"
defaults.brightnessDown = ipc .. "brightnessDown"

return defaults
