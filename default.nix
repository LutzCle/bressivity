{ pkgs ? (import <nixpkgs> {}) }:

let env = with pkgs; [ gnumake inkscape (texlive.combine { inherit (texlive) scheme-full pgf;}) pgfplots ];
in pkgs.stdenv.mkDerivation rec {
  name = "myLaTeXEnv";
  src = ./.;
  version = "0.0.0";

  buildInputs = [ env ];
}
