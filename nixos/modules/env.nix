{ pkgs, ... }:

{
  # Setup Env Variables
  environment.variables = {
    SPOTIFY_PATH = "${pkgs.spotify}/";
    # JDK_PATH = "${pkgs.jdk11}/";
    NODEJS_PATH = "${pkgs.nodePackages_latest.nodejs}/";
  };
}
