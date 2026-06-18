{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Archives
    _7zz
    unrar
    unzip
    zip
    file

    # Audio
    pamixer
    pavucontrol
    pulseaudio

    # Browsers / internet
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

    # Networking / wireless
    wirelesstools
    tailscale
    qbittorrent
    nmgui
    nmap

    # Com
    thunderbird
    keepassxc

    # Wayland utilities
    wl-clipboard
    wl-gammarelay-rs
    brightnessctl
  ];
}
