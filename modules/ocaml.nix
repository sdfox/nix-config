{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    opam
    ocaml
  ];
}
