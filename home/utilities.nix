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

    # Better top
    bottom

    fastfetch

    unzip
    ripunzip

    # HTTP clients
    curl
    wget
  ];
}