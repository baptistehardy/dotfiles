{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;

    dotDir = ".config/zsh";

    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "eza -la";
      mux = "zellij";
      cat = "bat";
    };

    initExtra = ''
      eval "$(${pkgs.oh-my-posh}/bin/oh-my-posh init zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/catppuccin_mocha.omp.json)"
    '';

    envExtra = ''
        export PATH=/run/wrappers/bin:/run/current-system/sw/bin/:/nix/var/nix/profiles/default/bin:$HOME/.nix-profile/bin:/etc/profiles/per-user/$USER/bin:$PATH
    '';
  };
  
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    options = [ "--cmd cd" ];
  };

  programs.thefuck.enable = true;

  programs.bat.enable = true; 
}
