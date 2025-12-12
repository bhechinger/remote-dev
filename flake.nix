{
  description = "flake for GCE remote dev environment";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0"; # Stable Nixpkgs
    nixpkgs-unstable.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1"; # Unstable Nixpkgs
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
       inherit system;
       config = { allowUnfree = true; };
      };

      lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
        remote-dev = lib.nixosSystem {
          inherit system;

          modules = [
            ./modules/default.nix
          ];
        };
      };
    };
}
