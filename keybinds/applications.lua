-- =========================================================
-- APPLICATION KEYBINDS
-- =========================================================

local apps = require("config.apps")
local mainMod = "SUPER"

-- SUPER + ENTER → Terminal
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(apps.terminal), {
    description = "Open terminal",
})

-- SUPER + E → File manager
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(apps.fileManager), {
    description = "Open file manager",
})

-- SUPER + SPACE → Application launcher
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(apps.menu), {
    description = "Open application launcher",
})
