{ config, pkgs, ... }:
let
  ocamlPkgs = pkgs.ocaml-ng.ocamlPackages_5_3;
in
{
  environment.systemPackages = with pkgs; [
    opam
    ocaml
  ] ++ (with ocamlPkgs; [
    ocaml-lsp
    ocamlformat
    odoc
    utop
  ]);

  environment.variables = {
  };
}
