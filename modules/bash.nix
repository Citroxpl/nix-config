{ config, pkgs, ... }:

{
    programs.bash = {
    promptInit = ''
        PS1="\[\e[38;5;40m\]\u\[\e[38;5;46m\]@\[\e[38;5;40m\]\h\[\e[0m\]:\[\e[38;5;33m\]\w\[\e[0m\] \[$(tput sgr0)\]"    '';
    };
}