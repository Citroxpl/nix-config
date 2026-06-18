{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    greetd
    tuigreet
  ];

  services.greetd = {
    enable = true;

    settings.default_session = {
      user = "greeter";

      command = ''
        ${pkgs.tuigreet}/bin/tuigreet \
          --time \
          --cmd "${pkgs.hyprland}/bin/start-hyprland"
      '';
    };
  };
}