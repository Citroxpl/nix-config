{ config, lib, pkgs, modulesPath, ... }:

{
  networking.hostName = "t480";
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "sd_mod" ];
  boot.extraModulePackages = [ ];

  boot.kernelModules = [ "kvm-intel" ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/5445ed5a-2b06-4d93-a356-ec2eb57ce00c";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-030528aa-d743-42a6-b822-864df883a218".device = "/dev/disk/by-uuid/030528aa-d743-42a6-b822-864df883a218";

  boot.loader.grub.enable = false;
  boot.loader.systemd-boot.enable = false;

  swapDevices = [ ];
  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
