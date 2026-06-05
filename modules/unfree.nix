{ config, pkgs, lib, ... }:
{
  # To use unfree packages:
  # b) For `nixos-rebuild` you can set
  #        { nixpkgs.config.allowUnfree = true; }
  #      in configuration.nix to override this.
  #
  #      Alternatively you can configure a predicate to allow specific packages:
  #        { nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
  #            "wechat"
  #          ];
  #        }
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    steam
    (olympus.override {
      celesteWrapper = "steam-run";
    })
  ];

  programs.steam.enable = true;
}
