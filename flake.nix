{
  description = "Baptiste's NixOS configuration";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-24.05";
    };

    nixpkgs-unstable = {
      url = "github:nixos/nixpkgs/nixpkgs-unstable";
    };

    home-manager = { 
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nvchad4nix = {
      url = "github:NvChad/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    darwin,
    ...
  }:
  {
    nixosConfigurations = {
      tachyon = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        
        specialArgs = { inherit inputs nixpkgs nixpkgs-unstable; };

        modules = [
          ./hosts/tachyon
            
          ./overlays

          home-manager.nixosModules.home-manager {
            home-manager = {
              extraSpecialArgs = { inherit inputs nixpkgs nixpkgs-unstable; };
              useGlobalPkgs = true;
              useUserPackages = true;
              users.baptiste = import ./home;
            };
          }
        ];
      };
    };

    darwinConfigurations = {
      macos = darwin.lib.darwinSystem {
        system = "aarch64-darwin";

        modules = [
          home-manager.darwinModules.home-manager {
            home-manager = {
              extraSpecialArgs = { inherit inputs nixpkgs nixpkgs-unstable; };
              useGlobalPkgs = true;
              useUserPackages = true;
              users.baptiste = import ./home;
            };
          }
        ];
      };
    };
  };
}
