{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    mpd
    mpc
    ncmpcpp
  ];
}
