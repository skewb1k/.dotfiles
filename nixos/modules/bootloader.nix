{ pkgs,  ... }:

{
  boot = {
    loader = {
      grub = {
        enable = true;
        device = "nodev";
        useOSProber = true;
        efiSupport = true;
        configurationLimit = 10;
        extraConfig=''
          GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
        '';
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      # systemd-boot.enable = true;
      timeout = 3;
    };
    initrd = {
      enable = true;
      systemd.enable = true;
      availableKernelModules = ["nvme" "xhci_pci" "thunderbolt" "usb_storage" "sd_mod"];
    };
    kernelModules = [ "acpi_call" ];
    kernelParams = [ "quiet" "pcie_aspm=force" ];
    consoleLogLevel = 0;
		kernelPackages = pkgs.linuxPackages;
		extraModulePackages = with pkgs.linuxPackages; [
			acpi_call
		];
  };
}
