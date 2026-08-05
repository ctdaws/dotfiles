{ pkgs, config, ... }: {
  system = {
    stateVersion = 5;
    # activationScripts are executed every time you boot the system or run `nixos-rebuild` / `darwin-rebuild`.
    activationScripts = {
      postActivation.text = ''
        # activateSettings -u will reload the settings from the database and apply them to the current session,
        # so we do not need to logout and login again to make the changes take effect.
        /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
      '';

      # make app alias' show up in spotlight
      # applications.text = let
      #   env = pkgs.buildEnv {
      #     name = "system-applications";
      #     paths = config.environment.systemPackages;
      #     pathsToLink = "/Applications";
      #   };
      # in
      #   pkgs.lib.mkForce ''
      #     # Set up applications.
      #     echo "setting up /Applications..." >&2
      #     rm -rf /Applications/Nix\ Apps
      #     mkdir -p /Applications/Nix\ Apps
      #     find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
      #     while read -r src; do
      #       app_name=$(basename "$src")
      #       echo "copying $src" >&2
      #       ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
      #     done
      #   '';
    };

    defaults = {
      dock = {
        persistent-apps = [
          "/Applications/Arc.app"
          "/Applications/Alacritty.app"
          "/Applications/Obsidian.app"
          # "music"
        ];
        show-recents = false;
        # don't rearrange spaces based on most recent use
        mru-spaces = false;
      };

      finder = {
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        QuitMenuItem = true;
        ShowPathbar = true;
        ShowStatusBar = true;
      };

      menuExtraClock = {
        Show24Hour = true;
        ShowDate = 1; # Always
      };

      trackpad = {
        TrackpadRightClick = true;
        TrackpadThreeFingerDrag = true;
      };

      NSGlobalDomain = {
        AppleInterfaceStyle = "Dark";
      };
    };
    
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToControl = true;
    };
  };

  # Add ability to used TouchID for sudo authentication
  security.pam.services.sudo_local.touchIdAuth = true;
}
