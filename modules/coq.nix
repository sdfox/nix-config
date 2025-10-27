{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    coq_8_10
  ];
}
