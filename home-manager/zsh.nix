{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/.dotfiles";
      in {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "sudo nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
      scg = "sudo nix-collect-garbage -d";
      hms = "home-manager switch --flake ${flakeDir}";
      hlr = "hyprctl reload";
      # conf = "nvim ${flakeDir}/nixos/configuration.nix";
      # pkgs = "nvim ${flakeDir}/nixos/packages.nix";

      cdf = "cd ${flakeDir}";
      ll = "ls -l";
      cl = "clear";
      # v = "nvim";
      # se = "sudoedit";
      ff = "fastfetch";

      dcub = "docker compose up --build";
      dcrm = "yes | docker compose rm; yes | docker system prune";

      sdn = "shutdown 0";
      srb = "reboot";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "agnoster"; # blinks is also really nice
    };
  };
}
