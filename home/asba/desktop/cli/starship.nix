{lib, ...}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;
      character = {
        success_symbol = "[](purple)";
        error_symbol = "[](red)";
        vimcmd_symbol = "[](green)";
      };
      directory = {
        style = "yellow";
      };
      right_format = lib.concatStrings [
        "$battery"
        "$time"
      ];
    };
  };
}
