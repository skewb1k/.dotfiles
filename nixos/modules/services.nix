{ pkgs, ... }:

{
  # Systemd services setup
  # systemd.packages = with pkgs; [
  #   auto-cpufreq
  # ];
  
  # Enable Services
  # services.geoclue2.enable = true;
  # programs.direnv.enable = true;
  # services.upower.enable = true;
  services.getty.autologinUser = "skewbik";
  services.dbus.enable = true;
  powerManagement.enable = true;
  services.envfs.enable = true;
  # services.mpd.enable = true;
  programs.thunar.enable = true;
  services.logind.lidSwitchExternalPower = "suspend";
  # services.logind.extraConfig = ''
  #   HandlePowerKey=suspend
  #   IdleAction=suspend
  #   IdleActionSec=15m
  # '';
  programs.zsh.enable = true;
  # services.tumbler.enable = true; 
  # services.colord.enable = true; 
  # services.fwupd.enable = true;
  services.tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

        CPU_MIN_PERF_ON_AC = 0;
        CPU_MAX_PERF_ON_AC = 100;
        CPU_MIN_PERF_ON_BAT = 0;
        CPU_MAX_PERF_ON_BAT = 80;

       #Optional helps save long term battery health
       START_CHARGE_THRESH_BAT0 = 40; # 40 and bellow it starts to charge
       STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging

      };
};
  # services.auto-cpufreq = {
  #   # enable = true;
  #   enable = false;
  #   settings = {
  #     battery = {
  #       governor = "powersave";
  #       turbo = "never";
  #     };
  #     charger = {
  #       governor = "performance";
  #       turbo = "auto";
  #     };
  #   };
  # };
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
