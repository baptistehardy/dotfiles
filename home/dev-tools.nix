{ pkgs, ...  }:

{
  home.packages = with pkgs; [
    # Visual git client
    lazygit

    # API testing client
    httpie

    # JSON viewer
    fx

    # JSON query language CLI tool
    jql

    # Selector for data structures
    dasel

    # S3 client
    minio-client

    # Docker management TUI
    # lazydocker

    # K8 dashboard TUI
    # kdash

    # load testing tool
    k6
  ];
}
