{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # apps
    xfce4-whiskermenu-plugin
    lxqt.qterminal    
    blueman
    zsh
    
    # Archives
    _7zz
    unrar
    unzip
    zip
    file
    xarchiver

    # Audio
    pamixer
    pavucontrol
    pulseaudio

    # Browsers / internet
    google-chrome
    netflix
    # Dev
    kitty
    ccache
    gcc
    gdb
    gradle
    nodejs
    pandoc
    poedit
    python3
    qemu
    swig
    git
    htop
    jq
    lshw
    nano
    wget
    yt-dlp
    gnumake
    pkg-config
    ncurses
    flex
    bison
    gcc
    zlib
    vbindiff
    vscode
    github-desktop    

    # Hardware / diagnostics
    acpi
    binwalk
    dmidecode
    ethtool
    i2c-tools
    libinput
    nvme-cli
    powertop
    stress-ng
    sysbench
    testdisk
    usbutils
    fastfetch

    # Media
    ffmpeg
    freecad
    mpv
    nomacs
    #prusa-slicer
    vlc
    libreoffice
    zed-editor

    # Networking / wireless
    wirelesstools
    tailscale
    qbittorrent
    nmgui
    nmap

    # Com
    thunderbird
    keepassxc
  ];
}
