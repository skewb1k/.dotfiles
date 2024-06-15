{ pkgs,  ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = false;
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.useOSProber = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.configurationLimit = 10;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";
  # boot.loader.grub.extraConfig=''
  #     GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=LVDS-1:d"
  # '';
  boot.loader.timeout = 4;
  # boot.initrd.enable = true;
  # boot.initrd.systemd.enable = true;
  boot.consoleLogLevel = 3;
}