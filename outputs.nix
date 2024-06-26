{inputs, ...}:
with inputs; let
  nixpkgsWithOverlays = import ./overlay.nix {inherit inputs;};
  argDefaults = {
    inherit inputs self nix-index-database;
    channels = {inherit nixpkgs;};
  };
in {
  nixosConfigurations.nixos = nixpkgs.lib.nixosSystem rec {
    system = "x86_64-linux";
    specialArgs = argDefaults // {inherit system;};
    modules = [
      #其他配置文件
      ./nix/wsl.nix
      ./nix/system.nix
      ./nix/service.nix
      #一些模块
      nixos-wsl.nixosModules.wsl
      home-manager.nixosModules.home-manager
      # 杂项配置
      {
        nixpkgs = nixpkgsWithOverlays;
        home-manager.extraSpecialArgs = specialArgs;
      }
    ];
  };
}
