{ pkgs, ... }:
{
  services.undervolt.enable = true;
  services.undervolt.analogioOffset = -50;
  services.undervolt.coreOffset = -50;
  services.undervolt.temp = 80;
}
