{ pkgs, ... }: {

  home.packages = with pkgs; [
    lua
    selene
    stylua
  ];
}
