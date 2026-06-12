{config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./git.nix
    ./nvim.nix
    ./zsh.nix
    ./fzf.nix
    ./zoxide.nix
    ./starship.nix
  ];

  home.username = "chrnio";
  home.homeDirectory = "/home/chrnio";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    BAT_THEME = "Catppuccin Mocha";

    GOPATH = "$HOME/.go";
    GOBIN = "$HOME/.go/bin";

    CARGO_HOME = "$HOME/.cargo";
    RUSTUP_HOME = "$HOME/.rustup";
  };

  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
    "$HOME/.go/bin"
  ];
}
