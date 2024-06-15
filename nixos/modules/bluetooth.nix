{ pkgs,  ... }:

{
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
    settings = {
      General = {
        Enable = "Source,Sink,Media,Socket";
        Experimental = true;
      };
    };
  };

  services.blueman.enable = true;
  environment.systemPackages = with pkgs; [
    bluez
    bluez-tools
  ];
}