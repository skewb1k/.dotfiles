{ config, lib, pkgs, ... }:
with lib;
let
  cfg = config.modules.hardware.amdgpu;
in
{
  options.modules.hardware.amdgpu = { enable = mkEnableOption "amdgpu"; };

  config = mkIf cfg.enable {
    boot.initrd.kernelModules = [ "amdgpu" ];
    boot.kernelModules = [ "kvm-amd" ];
    # services.xserver.videoDrivers = [ "amdgpu" ];
    hardware.opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
        amdvlk
      ];
      package = pkgs.mesa.drivers;
    };
    hardware.enableRedistributableFirmware = true;
  };
}