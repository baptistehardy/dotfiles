{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Quick man page
    tldr

    # Better find
    fd

    # Better grep
    ripgrep

    # Batch file edit tool
    sad

    # Benchmarking tool CLI
    hyperfine

    # ping with TUI
    gping

    # Bandwidth utilization tool
    bandwhich

    # Makefile alternative
    just

    # DNS CLI client
    doggo

    # Better df
    duf

    # Better du
    dust

    # File sharing CLI
    croc

    # Alternative to top
    bottom

    fastfetch

    # Zipping utilities
    zip
    unzip
    ripunzip

    # HTTP clients
    curl
    wget

    openssl

    ffmpeg_7

    # GPG TUI 
    gpg-tui

    # TUI for CVEs
    # flawz
  ];
}
