{ pkgs, ... }:

{
 programs.hyprland = {
    enable = true;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  environment.systemPackages = with pkgs; [
    # --Utils and more--
    wlr-randr
    brightnessctl
    # swaynotificationcenter
    hyprpicker
    pamixer
    networkmanagerapplet
    playerctl
    wofi

    # --Background--
    swww

    # --Screenshots--
    grim
    slurp

    # --Overlays Bars and more--
    waybar
    wlogout
    nwg-drawer
  ];
}