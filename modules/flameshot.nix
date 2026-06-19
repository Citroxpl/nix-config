{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    flameshot
    slurp
    grim
  ];

  environment.etc."xdg/flameshot/flameshot.ini".text = ''
    [General]
    buttons=@Variant(\0\0\0\x7f\0\0\0\vQList<int>\0\0\0\0\x13\0\0\0\0\0\0\0\x1\0\0\0\x2\0\0\0\x3\0\0\0\x4\0\0\0\x5\0\0\0\x6\0\0\0\x12\0\0\0\xf\0\0\0\x16\0\0\0\x13\0\0\0\b\0\0\0\t\0\0\0\x10\0\0\0\n\0\0\0\v\0\0\0\x17\0\0\0\xe\0\0\0\x11)
    contrastOpacity=127
    disabledTrayIcon=true
    drawColor=#ffffff
    drawThickness=2
    saveAsFileExtension=png
    savePath=/home/kuba/Pictures/Screenshots
    savePathFixed=true
    showAbortNotification=false
    showDesktopNotification=false
    showSelectionGeometryHideTime=3000
    showStartupLaunchMessage=false
    uiColor=#ffffff
    uiLanguage=auto
  '';
}
