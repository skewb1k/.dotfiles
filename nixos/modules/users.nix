{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.skewbik = {
    isNormalUser = true;
    description = "skewbik";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" "docker" ];
    shell = pkgs.zsh;
  };
  services.getty.autologinUser = "skewbik";

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
