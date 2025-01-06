{ pkgs, ... }: {
  packages = [];
  bootstrap = ''
    cp -rf ${./app} "$out"
    cp -rf ${./dev.nix} "$out/.idx/dev.nix"
    cp -rf ${./astronaut.png} "$out/.idx/icon.png"
    chmod -R +w "$out"
  '';
}