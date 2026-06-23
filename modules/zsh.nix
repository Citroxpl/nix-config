{ pkgs, ...}:


{
  _class = "nixos";

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    ohMyZsh = {
      enable = true;
    };

    interactiveShellInit = ''
      source ${../package-files/kali-like.zsh-theme}
    '';
  };
}
