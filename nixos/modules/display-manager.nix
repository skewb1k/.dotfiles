{ pkgs, ... }:

{
  # Enable Display Manager
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%I:%M %p | %a • %h | %F' --cmd Hyprland";
        user = "greeter";
      };
      initial_session = {
        command = "${pkgs.hyprland}/bin/Hyprland";
        user = "skewbik";
      };
    };  
  };

  environment.systemPackages = with pkgs; [
    greetd.tuigreet
  ];
}
