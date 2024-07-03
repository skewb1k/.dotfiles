{ pkgs, ... }:

{
  # Systemd services setup
  systemd.packages = with pkgs; [
    auto-cpufreq
  ];
  
  # Enable Services
  # services.geoclue2.enable = true;
  programs.direnv.enable = true;
  services.upower.enable = true;
  services.getty.autologinUser = "skewbik";
  programs.dconf.enable = true;
  services.dbus.enable = true;
  services.mpd.enable = true;
  programs.thunar.enable = true;
  programs.zsh.enable = true;
  services.tumbler.enable = true; 
  services.colord.enable = true; 
  programs.light.enable = true;
  services.fwupd.enable = true;
  services.auto-cpufreq.enable = true;
  hardware.system76.enableAll = true;
  virtualisation.docker.enable = true;
  
  environment.systemPackages = with pkgs; [
    at-spi2-atk
    qt6.qtwayland
    psi-notify
    poweralertd
    playerctl
    psmisc
    ffmpeg_6-full
    wl-screenrec
    wl-clipboard
    wl-clip-persist
    cliphist
    xdg-utils
    # wtype
    wlrctl
    waybar
    rofi-wayland
    # dunst
    # avizo
    gifsicle
  ];
}
