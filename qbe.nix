with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "qbe";
  version = "1.2";
  src = pkgs.fetchgit {
    url = "git://c9x.me/qbe.git";
    rev = "refs/tags/v${version}";
    hash = "sha256-UgtJnZF/YtD54OBy9HzGRAEHx5tC9Wo2YcUidGwrv+s=";
  };
  installPhase = ''
    mkdir -p $out/bin
    cp qbe $out/bin
  '';
}
