{
  imports = [
    ./hardware-configuration.nix
    ./modules/bundle.nix
  ];
  
  nixpkgs.config.allowUnfree = true;

  networking.hostName = "home"; # Define your hostname.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "unstable";
}