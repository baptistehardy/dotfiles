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
  };
}
