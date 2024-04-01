with import <nixpkgs> {};

pkgs.buildGoModule rec {
  name = "goose";
  version = "3.18.0";

  src = pkgs.fetchFromGitHub {
    owner = "pressly";
    repo = name;
    rev = "v${version}";
    sha256 = "sha256-hmb/pLhl7fAt6g4wPtNnwfaIKw/CMD8iktFmeFClG7k=";
  };

  subPackages = [ "cmd/goose" ];

  vendorHash = "sha256-AaUDwqnpgGGfSj0qez/FSVbOCQL5NJV/kYs2Q6XNbNE=";
}

