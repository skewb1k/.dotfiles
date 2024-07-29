{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium
    telegram-desktop
    alacritty
    obs-studio
    vencord
    firefox-devedition
    vim
    # neovim
    # jetbrains.pycharm-community
    # vscodium
    # postman
    vscode
    nomacs
    kalker
    # arc-browser
    # gimp
    spotify
    discord
    obsidian
    
    # CLI utils
    tree
    wget
    git
    gnumake
    fastfetch
    htop
    nix-index
    unzip
    # scrot
    # ffmpeg
    mediainfo
    ranger
    cava
    zip
    ntfs3g
    argyllcms
    yt-dlp
    openssl
    lazygit

    # dmenu

    home-manager
  ];
}
