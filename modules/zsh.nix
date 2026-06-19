{ pkgs, ...}:


{
  _class = "nixos";

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    ohMyZsh = {
      theme = "";
    };
  };
}
