# RISC-V cross compile support
{ config, pkgs, lib, ... }: {
  environment.systemPackages = with pkgs.pkgsCross.riscv64.buildPackages; [
    gcc
    gdb
    binutils
  ] ++ [ pkgs.qemu ];

  environment.variables = {
    CROSS_COMPILE = "riscv64-unknown-linux-gnu-";
  };
}
