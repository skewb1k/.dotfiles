{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nodejs
    go
    (python3.withPackages (ps: with ps; [ pip ]))
  ];
}
