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

    shellAliases = {
      ns = "nix-shell";
      rs = "./bin/rails server";
      rc = "./bin/rails console";
      rbf = "cd ~/nixos-config && sudo nixos-rebuild switch --flake '.#laptop'";
      i = "ip a";
    };
  };
}
