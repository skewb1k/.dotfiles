{
  imports = [
    ./hardware-configuration.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    # ./modules/xserver.nix
  ];

  networking.hostName = "home"; # Define your hostname.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.05"; # Don't change it bro
}