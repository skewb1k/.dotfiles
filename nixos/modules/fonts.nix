{ pkgs, ... }:

{
  # Fonts
  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    fira-code
    fira-code-symbols
    nerd-font-patcher
  ];
}