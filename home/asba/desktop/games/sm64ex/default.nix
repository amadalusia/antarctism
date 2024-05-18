{...}: {
  programs.sm64ex = {
    enable = true;
    region = "us";
    baserom = ./baserom.us.z64;
  };
}
