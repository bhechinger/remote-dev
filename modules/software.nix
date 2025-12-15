{ inputs, config, lib, pkgs, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      git
      inetutils
      vim
    ];
  };

 virtualisation.podman.enable = true;
}
