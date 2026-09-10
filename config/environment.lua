-- =========================================================
-- ENVIRONMENT
-- =========================================================
-- Cursor size shared by Hyprland and XCursor applications.
-- Session vars required for xdg-desktop-portal to pick the
-- correct backend (screen share, file picker).
-- =========================================================

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Required for xdg-desktop-portal-hyprland to identify the session
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
