{ pkgs, lib, ... }: {
  imports = [
    ./i18n.nix
    ./location.nix
    ./nix.nix
    ./fonts.nix
    ./networking.nix
    ./nixpkgs.nix
    ./users.nix
    ./audio.nix
    ./power.nix
    ./security.nix
    ./ssh.nix
  ];
}
