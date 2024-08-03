{ pkgs, ... }:

{
  # Systemd services setup
  systemd.packages = with pkgs; [
    auto-cpufreq
  ];
  
  # Enable Services
  # services.geoclue2.enable = true;
  # programs.direnv.enable = true;
  # services.upower.enable = true;
  services.getty.autologinUser = "skewbik";
  services.dbus.enable = true;
  services.envfs.enable = true;
  # services.mpd.enable = true;
  programs.thunar.enable = true;
  # services.logind.lidSwitchExternalPower = "suspend";
  # services.logind.extraConfig = ''
  #   HandlePowerKey=suspend
  #   IdleAction=suspend
  #   IdleActionSec=15m
  # '';
  programs.zsh.enable = true;
  # services.tumbler.enable = true; 
  # services.colord.enable = true; 
  # services.fwupd.enable = true;
  services.auto-cpufreq = {
    enable = true;
    # enable = false;
    settings = {
      battery = {
        governor = "performance";
        turbo = "auto";
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };
  # hardware.system76.enableAll = true;
  virtualisation.docker.enable = true;
 
  environment.systemPackages = with pkgs; [
    at-spi2-atk
    # qt6.qtwayland
    # psi-notify
    # poweralertd
    # playerctl
    psmisc
    wineWowPackages.waylandFull
    appimage-run
    # ffmpeg_6-full
    # wl-screenrec
    # wl-clipboard
    # wl-clip-persist
    # cliphist
    # xdg-utils
    # wtype
    # wlrctl
    # dunst
    # avizo
    # gifsicle
  ];
}
