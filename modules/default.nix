{ inputs, modulesPath, ... }:

{
  imports = [
    "${modulesPath}/virtualisation/google-compute-image.nix"
    ./software.nix
    ./users.nix
  ];

  system.stateVersion = "25.11";
}
