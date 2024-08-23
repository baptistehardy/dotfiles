{ pkgs, ... }: {
  
  home.packages = with pkgs; [
    nodejs
    nodePackages.npm

    typescript

    bun
    deno
  ];
}
