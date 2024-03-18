{
  nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  nur.url = "github:nix-community/NUR";
  nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
  neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
  nix-ld = {
    url = "github:Mic92/nix-ld";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  nixos-wsl = {
    url = "github:nix-community/NixOS-WSL";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  nix-index-database = {
    url = "github:Mic92/nix-index-database";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  home-manager = {
    url = "github:nix-community/home-manager/";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  alejandra = {
    url = "github:kamadorueda/alejandra/";
    inputs.nixpkgs.follows = "nixpkgs";
  };
}