{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "skewbik";
    homeDirectory = "/home/skewbik";
    stateVersion = "24.05";
  };
}