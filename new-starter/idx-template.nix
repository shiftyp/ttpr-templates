{ pkgs, ... }: {
  packages = [];
  bootstrap = ''
    mkdir -p "$WS_NAME"
    cp -rf ${./app} "$WS_NAME"
    mkdir -p "$WS_NAME/.idx/"
    cp -rf ${./dev.nix} ".idx/dev.nix"
    cp -rf ${./astronaut.png} ".idx/icon.png"
    chmod -R +w "$WS_NAME"
    mv "$WS_NAME" "$out"
    cd "$out"; npm install --package-lock-only --ignore-scripts
  '';
}