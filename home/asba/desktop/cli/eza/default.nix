_: {
  programs.eza = {
    enable = true;
    extraOptions = [
      "--group-directories-first"
      "--header"
      "--long"
      "--octal-permissions"
      "--created"
      "--sort=accessed"
      "--reverse"
    ];
    icons = true;
  };
}
