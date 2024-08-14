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
      ls = "exa -la";
    };

    initExtra = ''
      eval $(thefuck --alias)
    '';

    envExtra = ''
        export PATH=/run/current-system/sw/bin/:/nix/var/nix/profiles/default/bin:$HOME/.nix-profile/bin:/etc/profiles/per-user/$USER/bin:$PATH
    '';
  };
  
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
