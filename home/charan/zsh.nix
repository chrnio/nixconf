{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    autocd = true;

    history = {
      size = 200000;
      save = 200000;
      path = "$HOME/.zsh_history";
      share = true;
      ignoreDups = true;
      ignoreSpace = true;
    };

    shellAliases = {
      v = "nvim";
      vi = "nvim";
      vim = "nvim";

      ls = "eza --icons=always --group-directories-first --color=always -l --git --git-repos";
      lsa = "eza --icons=always --group-directories-first --color=always -la --git --git-repos";

      g = "git";
      gs = "git status -sb";

      cat = "bat --paging=never";
      grep = "rg";
      top = "btop";
    };

    initExtra = ''
      # functions that Home Manager cannot express

      function y() {
        local tmp cwd
        tmp="$(mktemp -t yazi-cwd.XXXXXX)"
        yazi "$@" --cwd-file="$tmp"
        if cwd="$(cat -- "$tmp")" && [[ -n "$cwd" && "$cwd" != "$PWD" ]]; then
          builtin cd -- "$cwd"
        fi
        rm -f -- "$tmp"
      }

      function mkcd() {
        mkdir -p "$1" && cd "$1"
      }

      function serve() {
        python3 -m http.server "${1:-8000}"
      }
    '';
  };
}
