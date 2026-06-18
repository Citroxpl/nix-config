{ pkgs, inputs, ... }:

{
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;

  environment.etc = {
    "xdg/hypr/hyprland.conf".source = ../hypr/hyprland.conf;
  };
}