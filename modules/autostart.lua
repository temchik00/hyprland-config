-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()
  hl.exec_cmd("systemctl --user start pipewire pipewire-pulse wireplumber")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  -- Dark theme
  hl.exec_cmd('gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"')
  hl.exec_cmd('gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"')
  hl.exec_cmd("waybar")

  -- Background changing
  hl.exec_cmd("awww-daemon")

  -- Clipboard
  hl.exec_cmd("wl-clip-persist --clipboard regular")
  hl.exec_cmd("wl-paste --watch cliphist store")
end)
