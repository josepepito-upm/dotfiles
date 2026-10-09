-- Default programs for keybindings and window rules
local defaults = {}

defaults.barOrShell     = "qs -c noctalia-shell"                                -- Status bar/shell
defaults.terminal       = "kitty"                                               -- Terminal
defaults.fileManager    = "thunar"                                              -- File manager
defaults.menu           = "qs -c noctalia-shell ipc call launcher toggle"       -- App launcher
defaults.sessionMenu    = "qs -c noctalia-shell ipc call sessionMenu toggle"    -- Session menu (lock, suspend, shutdown...)
defaults.sessionLock    = "qs -c noctalia-shell ipc call sessionLock toggle"    -- Session lock
defaults.music          = "Spotify"                                             -- Music player / Streaming music service
defaults.screenshot     = "flameshot gui"                                       -- Screenshot utility
defaults.messageClient  = "ferdium"                                             -- Message client (like Ferdium, Rambox...)
defaults.discordClient  = "vesktop"                                             -- Discord client
defaults.browser        = "zen-browser"                                         -- Browser

return defaults
