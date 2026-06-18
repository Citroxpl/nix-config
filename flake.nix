{
  description = "NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... } @ inputs: let
    system = "x86_64-linux";
    hostDirs = builtins.attrNames (builtins.readDir ./hosts);
  in
  {
    nixosConfigurations = builtins.listToAttrs (map (hostName:
      {
        name = hostName;
        value = nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            ./hosts/${hostName}/configuration.nix
          ];

          specialArgs = {
            inherit inputs;
          };
        };
      }
    ) hostDirs);
  };
}
