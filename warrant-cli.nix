with import <nixpkgs> {};

pkgs.buildGoModule rec {
  name = "warrant-cli";
  version = "0.11.0";

  src = pkgs.fetchFromGitHub {
    owner = "warrant-dev";
    repo = name;
    rev = "v${version}";
    sha256 = "sha256-tpTBSmS7qlq65+b/rw5vREaxGNWzOW20YnGNlrcKBKE=";
  };

  vendorHash = "sha256-hqfSfiVxyBYoWgUR3kyThsINihlCE1MLK2RhGgx77O4=";
}

