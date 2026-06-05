{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    mpd
    mpc
    ncmpcpp
  ];

  services.mpd.enable = true;
}
