{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    autoconf
    automake
    binutils
    bison
    flex
    gcc
    gdb
    gnumake
    libiconv
    libtool
    pkg-config
    python311
  ];
}
