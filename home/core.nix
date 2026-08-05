{pkgs, ...}: {
  home.packages = with pkgs; [
    # CLI tools
    # tmux
    # zellij
    bat
    fzf
    zoxide
    tldr
    # zsh-syntax-highlighting
    difftastic
    ripgrep
    uv
  ];
}
