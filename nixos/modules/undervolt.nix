{ pkgs, ... }:
{
  services.undervolt.enable = true;
  services.undervolt.analogioOffset = -90;
  services.undervolt.coreOffset = -90;
  services.undervolt.temp = 85;
}
