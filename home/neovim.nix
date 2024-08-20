{ inputs, config, pkgs, ... }: {

  programs.nvchad = {
    enable = true;

    extraPackages = with pkgs; [
      nixd
    ];
  };
}
