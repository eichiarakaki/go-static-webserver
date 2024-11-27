{ pkgs ? import <nixpkgs> {
    config = {
      allowUnfree = true;
    };
  } }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    go
    gopls
  ];

  name = "go-webserver-env";

  shellHook = ''
    export PS1="\[\033[01;32m\][$name:\\w]\$\[\033[00m\] "
    clear
    echo "on an environment."
  '';
}
