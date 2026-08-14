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
  hl.exec_cmd("waybar")
  -- Dark theme
  hl.exec_cmd('gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"')
end)
