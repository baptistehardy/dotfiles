{
  pkgs,
  ...
}: {
  programs.zellij = {
    enable = true;
    enableZshIntegration = true;
    
    settings = {
      default_shell = "zsh";
      theme = "catppuccin-mocha";
      copy_on_select = false;
      ui = {
        pane_frames = {
          rounded_corners = true;
          hide_session_name = true;
        };
      };
    };
  };
}
