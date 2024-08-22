apply:
  nixos-rebuild switch --flake .#tachyon --use-remote-sudo

debug:
  nixos-rebuild switch --flake .#tachyon --use-remote-sudo --show-trace --verbose

update-all:
  nix flake update

update:
  nix flake update $(i)

gc:
  sudo nix-collect-garbage --delete-old

clean:
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

