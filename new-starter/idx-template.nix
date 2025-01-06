{ pkgs, ... }: {
  packages = [
    pkgs.nodejs_20
  ];
  bootstrap = ''
    cp -rf ${./app} "$WS_NAME"
    mkdir -p "$WS_NAME/.idx/"
    cp -rf ${./dev.nix} "$WS_NAME/.idx/dev.nix"
    cp -rf ${./astronaut.png} "$WS_NAME/.idx/icon.png"
    chmod -R +w "$WS_NAME"
    mv "$WS_NAME" "$out"
    cd "$out"; npm install --package-lock-only --ignore-scripts
  '';
}