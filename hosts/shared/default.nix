{
  config,
  pkgs,
  lib,
  ...
}: {
  hardware.opengl.enable = true;

  networking.hostName = "pluto"; # Define your hostname.
  networking.networkmanager.enable = true; 

  time.timeZone = "Europe/London";

  i18n.defaultLocale = "en_GB.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "uk";
  };
  
  services.printing.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true; 
  security.polkit.enable = true;
  services.pipewire = {
    enable = true;
    audio.enable = true;
    alsa.enable = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  services.libinput.enable = true;

  services.dbus.enable = true;

  environment.pathsToLink = [ "/share/xdg-desktop-portal" "/share/applications" ];

  programs.zsh = {
    enable = true;
  };
}
