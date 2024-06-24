{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium
    telegram-desktop
    alacritty
    obs-studio
    wofi
    mpv
    discord
    firefox-devedition
    libreoffice-qt
    dbeaver-bin
    vim
    
    # jetbrains.pycharm-community
    # vscodium
    postman
    vscode
    nomacs
    gimp
    
    # kdenlive
    discord
    gparted
    obsidian
    libsForQt5.kolourpaint
    
    # CLI utils
    # file
    tree
    wget
    git
    fastfetch
    htop
    # nix-index
    unzip
    scrot
    ffmpeg
    light
    # lux
    # mediainfo
    # ranger
    # zram-generator
    cava
    zip
    ntfs3g
    yt-dlp
    brightnessctl
    swww
    openssl
    lazygit


    # GUI utils
    feh
    imv
    dmenu
    mako
    gromit-mpx


    home-manager
  ];
}
