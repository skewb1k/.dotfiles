{ pkgs, ... }:

{
  # Setup Env Variables
  environment.variables = {
    # JDK_PATH = "${pkgs.jdk11}/";
    NODEJS_PATH = "${pkgs.nodePackages_latest.nodejs}/";
  };
}
