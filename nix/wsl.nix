{pkgs, ...}: {
  wsl = {
    enable = true;
    defaultUser = "parsifa1";
    startMenuLaunchers = true;
    nativeSystemd = true;
  };
  environment.systemPackages = [pkgs.cloudtide.win32yank];

  networking.hostName = "nixos";
  system.stateVersion = "23.11";
}
