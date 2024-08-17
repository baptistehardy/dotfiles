{ pkgs, ... }:

{
  home.packages = with pkgs; [ pkgs.nvchad ];
}
