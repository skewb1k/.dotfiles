{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium
    telegram-desktop
    alacritty
    obs-studio
    discord
    firefox-devedition
    libreoffice-qt
    vim
    # neovim
    # jetbrains.pycharm-community
    # vscodium
    postman
    vscode
    nomacs
    # gimp
    discord
    obsidian
    libsForQt5.kolourpaint
    
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
    # light
    lux
    mediainfo
    ranger
    cava
    zip
    ntfs3g
    yt-dlp
    swww
    openssl
    lazygit

    # dmenu

    home-manager
  ];
}
