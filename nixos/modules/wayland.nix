{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    xwayland
    wl-clipboard
    cliphist
  ];
}