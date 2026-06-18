{ config, pkgs, lib, ... }:

{
  ############################################################
  # Environment variables
  ############################################################

  environment.sessionVariables = {
    BROWSER   = "librewolf";
    TERMINAL  = "kitty";
    EDITOR    = "nano";
  };

  xdg.mime.enable = true;
  xdg.mime.defaultApplications = {

    ##########################################################
    # Browser
    ##########################################################

    "text/html" = "librewolf.desktop";
    "text/xml" = "librewolf.desktop";
    "application/xhtml+xml" = "librewolf.desktop";

    "x-scheme-handler/http" = "librewolf.desktop";
    "x-scheme-handler/https" = "librewolf.desktop";
    "x-scheme-handler/about" = "librewolf.desktop";
    "x-scheme-handler/unknown" = "librewolf.desktop";

    ##########################################################
    # Mail
    ##########################################################

    "x-scheme-handler/mailto" = "thunderbird.desktop";
    "message/rfc822" = "thunderbird.desktop";

    ##########################################################
    # File manager
    ##########################################################

    "inode/directory" = "thunar.desktop";

    ##########################################################
    # Images
    ##########################################################

    "image/jpeg" = "nomacs.desktop";
    "image/png" = "nomacs.desktop";
    "image/gif" = "nomacs.desktop";
    "image/webp" = "nomacs.desktop";
    "image/bmp" = "nomacs.desktop";
    "image/tiff" = "nomacs.desktop";
    "image/svg+xml" = "nomacs.desktop";
    "image/x-xpixmap" = "nomacs.desktop";
    "image/x-tga" = "nomacs.desktop";

    ##########################################################
    # Video
    ##########################################################

    "video/mp4" = "mpv.desktop";
    "video/x-matroska" = "mpv.desktop";
    "video/webm" = "mpv.desktop";
    "video/x-msvideo" = "mpv.desktop";
    "video/quicktime" = "mpv.desktop";
    "video/mpeg" = "mpv.desktop";
    "video/ogg" = "mpv.desktop";

    ##########################################################
    # Audio
    ##########################################################

    "audio/mpeg" = "tauonmb.desktop";
    "audio/flac" = "tauonmb.desktop";
    "audio/ogg" = "tauonmb.desktop";
    "audio/wav" = "tauonmb.desktop";
    "audio/x-wav" = "tauonmb.desktop";
    "audio/mp3" = "tauonmb.desktop";
    "audio/aac" = "tauonmb.desktop";
    "audio/webm" = "tauonmb.desktop";

    ##########################################################
    # PDFs
    ##########################################################

    "application/pdf" = "librewolf.desktop";
    
    ##########################################################
    # LibreOffice document formats
    ##########################################################

    "application/vnd.openxmlformats-officedocument.wordprocessingml.document" =
      "libreoffice-writer.desktop";

    "application/msword" =
      "libreoffice-writer.desktop";

    "application/vnd.oasis.opendocument.text" =
      "libreoffice-writer.desktop";

    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" =
      "libreoffice-calc.desktop";

    "application/vnd.ms-excel" =
      "libreoffice-calc.desktop";

    "application/vnd.oasis.opendocument.spreadsheet" =
      "libreoffice-calc.desktop";

    "application/vnd.openxmlformats-officedocument.presentationml.presentation" =
      "libreoffice-impress.desktop";

    "application/vnd.ms-powerpoint" =
      "libreoffice-impress.desktop";

    "application/vnd.oasis.opendocument.presentation" =
      "libreoffice-impress.desktop";

    ##########################################################
    # CAD / STL / STEP
    ##########################################################

    "model/stl" = "freecad.desktop";
    "model/step" = "freecad.desktop";
    "application/sla" = "freecad.desktop";
  };
}