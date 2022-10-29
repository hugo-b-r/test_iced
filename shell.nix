let
  pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "Test Iced";
  buildInputs = with pkgs; [
    xorg.libX11 pkg-config
  ];
  shellHook = ''
    export PS1='\n\[\033[1;34m\][${name}:\w]\$\[\033[0m\] '
  '';
}