{ pkgs, hostname, username, ... }: {
  networking.hostName = hostname;
  networking.computerName = hostname;
  system.defaults.smb.NetBIOSName = hostname;

  programs.fish.enable = true;

  system.primaryUser = username;
  users.knownUsers = [ "${username}" ];
  users.users.${username} = {
    home = "/Users/${username}";
    uid = 501;
    description = username;
    shell = pkgs.fish;
  };

  nix.settings.trusted-users = [ username ];
}
