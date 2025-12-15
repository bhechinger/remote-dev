{ inputs, config, lib, pkgs, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      git
      inetutils
      vim
      kitty.terminfo
    ];
  };

 virtualisation.podman.enable = true;
}
