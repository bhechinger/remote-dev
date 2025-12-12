{ inputs, config, lib, pkgs, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      git
      podman
      podman-compose
      inetutils
      vim
      kitty-terminfo
    ];
  };
}
