{ pkgs, ... }: {
  programs.gpg = {
    enable = true;
    settings = {
      no-greeting = true;
      keyid-format = "0xlong";
    };
  };
  
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    enableZshIntegration = true;
    defaultCacheTtl = 34560000;
    maxCacheTtl = 34560000;
    pinentryPackage = pkgs.pinentry-gnome3;
  };
}
