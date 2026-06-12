{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wget
    curl
    tree
    ripgrep
    fd
    btop
    fastfetch
    yazi
    tealdeer
    bat
    eza
    jq
    unzip
    zip
    gcc
    gnumake
    nh
    nix-output-monitor
    lazygit
    zed-editor
    code
    obsidian
    bitwarden-desktop
    discord
    brave
    wl-clipboard
    kitty
    tmux
  ];
}
