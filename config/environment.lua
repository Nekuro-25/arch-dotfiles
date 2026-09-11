-- =========================================================
-- ENVIRONMENT
-- =========================================================
-- Cursor size shared by Hyprland and XCursor applications.
-- Session vars required for xdg-desktop-portal to pick the
-- correct backend (screen share, file picker).
-- Wayland-native rendering flags to avoid XWayland fallback
-- for Electron/Qt apps (Discord, VSCode, etc) — reduces
-- translation-layer overhead and fixes HiDPI/scaling blur.
-- =========================================================

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Required for xdg-desktop-portal-hyprland to identify the session
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Force native Wayland backend for Qt apps
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")

-- Force native Wayland backend for Electron apps (Discord, etc)
hl.env("NIXOS_OZONE_WL", "1")

-- Firefox native Wayland (not Electron, but same principle)
hl.env("MOZ_ENABLE_WAYLAND", "1")
