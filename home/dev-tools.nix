{ pkgs, ...  }:

{
  home.packages = with pkgs; [
    # API testing client
    httpie

    # S3 client
    minio-client

    # load testing tool
    k6

    # coding exercices
    exercism
  ];
}
