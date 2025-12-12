{ inputs, modulesPath, ... }:

{
  imports = [
    "${modulesPath}/virtualisation/google-compute-image.nix"
    ./system.nix
    ./software.nix
    ./users.nix
  ];
}
