{ config, pkgs, ...}:

{
    home.username = "chrnio";
    home.homeDirectory = "/home/chrnio";
    home.stateVersion = "26.05";

    programs.home-manager.enable = true;
}
