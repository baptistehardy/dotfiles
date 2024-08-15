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

   extraConfig = {
     core = {
       pager = "delta";
     };

     interactive = {
       diffFilter = "delta --color-only";
     };

     delta = {
       features = "decorations";
       keep-plus-minus-markers = true;
       line-numbers = true;
       navigate = true;
       light = false;
     };

     diff = {
       colorMoved = "default";
       renames = "copies";
       algorithm = "patience";
       compactionHeuristic = true;
     };

     merge = {
       conflictstyle = "diff3";
     };
    };
  };
}
