{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      "$mainMod" = "SUPER";
      monitor=[
        # ",preferred,auto,2"
        # "DP-2,2560x1440@170,0x0,1,bitdepth,8"
        # "HDMI-A-1,1920x1080@75,2560x-250,1,bitdepth,8,transform,3"
        "eDP-1,3072x1920@120,auto,1.5,"
        # "eDP-1,disable"
      ];
      
      env = [
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,/home/skewbik/Pictures"
        "HYPRSHOT_DIR,/home/skewbik/Pictures"
      ];

      debug = {
        disable_logs = false;
        enable_stdout_logs = true;
      };

      input = {
        kb_layout = "us,ru";
        kb_variant = "lang";
        kb_options = "grp:alt_shift_toggle";
        force_no_accel = true;
        follow_mouse = 1;

        touchpad = {
          natural_scroll = true;
          scroll_factor = 0.2;
        };

        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
      };

      general = {
        gaps_in = 4;
        gaps_out = 8;
        border_size = 2;
        "col.active_border" = "rgba(555555d9)";
        "col.inactive_border" = "rgba(595959aa)";

        layout = "dwindle";
        allow_tearing = false;
      };

      decoration = {
        rounding = 2;

        blur = {
          enabled = true;
          size = 10;
          passes = 2;
          new_optimizations = true;
          ignore_opacity = true;
        };

        drop_shadow = false;
        shadow_range = 4;
        shadow_render_power = 3;
        "col.shadow" = "rgba(1a1a1aee)";
      };

      windowrulev2 = "opacity 0.94 0.94,class:^(Spotify|Alacritty)$";

      animations = {
        enabled = true;

        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        # bezier = "myBezier, 0.33, 0.82, 0.9, -0.08";

        animation = [
          "windows,     1, 7,  myBezier"
          "windowsOut,  1, 7,  default, popin 80%"
          "border,      1, 10, default"
          "borderangle, 1, 8,  default"
          "fade,        1, 7,  default"
          "workspaces,  1, 6,  default"
        ];
      };

      dwindle = {
        pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true; # you probably want this
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 3;
        workspace_swipe_invert = false;
        workspace_swipe_distance = 200;
        workspace_swipe_forever = true;
      };

      misc = {
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
        enable_swallow = true;
        render_ahead_of_time = false;
        disable_hyprland_logo = true;
      };

      windowrule = [
        "float, ^(imv)$"
        "float, ^(mpv)$"
      ];

      exec-once = [
        "swww init"
        "swww img ~/.dotfiles/home-manager/modules/wms/wallpaper-night.jpg"
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "hypridle"
      ];

      bind = [
        # "$mainMod, V, exec, cliphist list | rofi --dmenu | cliphist decode | wl-copy"
        "$mainMod, D, exec, alacritty"
        "$mainMod, E, exec, firefox-devedition"
        "$mainMod, A, exec, discord"
        "$mainMod, W, exec, code"
        "$mainMod, P, exec, postman"
        "$mainMod, T, exec, thunar"
        "$mainMod, H, exec, code ~/.dotfiles/"
        "$mainMod, C, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, R, exec, rofi -show drun -show-icons -steal-focus"
        "$mainMod, J, togglesplit, # dwindle"

        # Move focus with mainMod + arrow keys
        "$mainMod, left,  movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up,    movefocus, u"
        "$mainMod, down,  movefocus, d"

        # Moving windows
        "$mainMod SHIFT, left,  swapwindow, l"
        "$mainMod SHIFT, right, swapwindow, r"
        "$mainMod SHIFT, up,    swapwindow, u"
        "$mainMod SHIFT, down,  swapwindow, d"

        # Window resizing                     X  Y
        "$mainMod CTRL, left,  resizeactive, -60 0"
        "$mainMod CTRL, right, resizeactive,  60 0"
        "$mainMod CTRL, up,    resizeactive,  0 -60"
        "$mainMod CTRL, down,  resizeactive,  0  60"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        # Keyboard backlight
        # "$mainMod, F3, exec, brightnessctl -d *::kbd_backlight set +33%"
        # "$mainMod, F2, exec, brightnessctl -d *::kbd_backlight set 33%-"

        # Volume and Media Control
        # ", XF86AudioRaiseVolume, exec, pamixer -i 5 "
        # ", XF86AudioLowerVolume, exec, pamixer -d 5 "
        # ", XF86AudioMute, exec, pamixer -t"
        # ", XF86AudioMicMute, exec, pamixer --default-source -m"
        
        # Brightness control
        ", XF86MonBrightnessDown, exec, light -U 10"
        ", XF86MonBrightnessUp, exec, light -A 10"

        # Configuration files
        ''$mainMod SHIFT, N, exec, alacritty -e sh -c "rb"''
        ''$mainMod SHIFT, C, exec, alacritty -e sh -c "conf"''
        ''$mainMod SHIFT, H, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/hyprland.nix"''
        ''$mainMod SHIFT, W, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/waybar.nix''
        # Screenshot a window
        ''$mainMod, PRINT, exec, hyprshot -m window''
        # Screenshot a monitor
        ''$mainMod SHIFT, PRINT, exec, hyprshot -m output''
        # Screenshot a region
        '', PRINT, exec, hyprshot -m region''



        # Waybar
        "$mainMod, B, exec, pkill -SIGUSR1 waybar"
        "$mainMod, W, exec, pkill -SIGUSR2 waybar"

        # Disable all effects
        "$mainMod Shift, G, exec, ~/.config/hypr/gamemode.sh "
      ];

      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
  };
}
