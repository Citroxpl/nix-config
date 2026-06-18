{ ... }:

{
  programs.hyprlock.enable = true;

  environment.etc = {
    "xdg/hypr/hyprlock.conf".source = ../hypr/hyprlock.conf;
  };
}