{ pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-hyprland
    pyprland
    hyprpicker
    hyprlock
    hyprshot
    hypridle
    # hyprcursor
    waybar
  ];
}