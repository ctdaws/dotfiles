{ ... }: {
  programs.fish = {
    enable = true;

    interactiveShellInit = "export CC=/opt/homebrew/opt/gcc/bin/gcc-15\n export CXX=/opt/homebrew/opt/gcc/bin/g++-15";

    shellAliases = {
      "ls" = "eza --icons=always";
      "cat" = "bat";
      "top" = "bpytop";
      "f" = "yazi";
    };

    shellAbbrs = {
      
    };

    shellInit = ''
      eval "$(zoxide init --cmd cd fish)"
    '';
  };
}
