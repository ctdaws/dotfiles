{...}: {
  programs.yazi  = {
    enable = true;

    settings = {
      manager.show_hidden = true;
      opener.edit = [
      	{
          run = ''hx "$@"'';
          block = true;
          for = "macos";
        }
      ];
      plugin = {
        prepend_previewers = [
          { mime = "application/pdf"; run = "pdf"; }
        ];
        prepend_preloaders = [
          { mime = "application/pdf"; run = "pdf"; }
        ];
      };
    };
  };
}
