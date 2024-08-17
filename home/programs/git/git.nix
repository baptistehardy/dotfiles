{
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;

    userName = "Baptiste Hardy";
    userEmail = "baptiste@hardy.sh";

    signing = {
       signByDefault = true;
       key = "E5007CA28AE272E8";
     };

    ignores = [ (builtins.readFile ./gitignore) ];
   
    delta = {
      enable = true;
      options = {
        diff-so-fancy = true;
        line-numbers = true;
        true-color = "always";
      };
    };

    aliases = {
      br = "branch";
      co = "checkout";
      cm = "commit -m"
    };

    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemove = true;
      url = {
        "ssh://git@github.com/baptistehardy" = { insteadOf = "https://github.com/baptistehardy"; };
      };
    };
  };
}
