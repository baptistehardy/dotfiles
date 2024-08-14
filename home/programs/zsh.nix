{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;

    dotDir = ".config/zsh";

    autosuggestion.enable = true;
    enableCompletion = true;

    shellAliases = {
      ls = "exa -la";
    };

    initExtra = ''
      eval $(thefuck --alias)
    '';

    plugins = with pkgs; [
      {
        name = "zsh-syntax-highlighting";
        src = fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-syntax-highlighting";
          rev = "0.6.0";
          sha256 = "0zmq66dzasmr5pwribyh4kbkk23jxbpdw4rjxx0i7dx8jjp2lzl4";
        };
        file = "zsh-syntax-highlighting.zsh";
      }
    ];
  };
  
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
