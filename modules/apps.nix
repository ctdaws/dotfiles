{ pkgs, ... }: {
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      cleanup = "zap";
    };

    brews = [
      "bpytop"
      "mingw-w64"
      "pipx"
      "openfortivpn"
      "gcc"
      "poppler"
    ];

    casks = [
      "arc"
      "obsidian"
      "steam"
      "qbittorrent"
      "zoom"
      "prowlarr"
      "visual-studio-code"
      "claude-code"
      "sioyek"
      # The following can be installed as
      # systemPackges, but that makes their
      # presence in the dock ugly and spotlight
      # kinda works with aliases but not too well.
      "alacritty"
      "discord"
      "slack"
      "vlc"
      "utm"
    ];

    # masApps = {
      # "Windows App" = 1295203466;
      # "Soulver 3" = 1508732804;
    # };
  };

  environment.systemPackages = [
    # This is where system packages would go
    # (e.g. alacritty), but I'm using brew for
    # these atm as mentioned above
    pkgs.aldente
    pkgs.rustup
    pkgs.fish
    pkgs.lldb
  ];
}
