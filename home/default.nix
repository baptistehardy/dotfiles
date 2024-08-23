{ inputs, config, pkgs, ... }: {

  imports = [
    ./dev-tools.nix
    ./zsh.nix
    ./gpg.nix
    ./git/git.nix
    ./zellij.nix
    ./eza.nix
    ./utilities.nix
    ./neovim.nix
    ./bat.nix

    inputs.nvchad4nix.homeManagerModule
  ];

  home = {
    username = "baptiste";
    homeDirectory = "/home/baptiste";

    stateVersion = "24.05";
  };

  xdg.enable = true;

  programs.home-manager.enable = true;
}
