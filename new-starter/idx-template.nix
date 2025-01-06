{ pkgs, ... }: {
  packages = [
    pkgs.nodejs_20
  ];
  bootstrap = ''
    cp -rf ${./app} "$out"
    chmod -R +w "$out"
    cd "$out"; npm install --package-lock-only --ignore-scripts
  '';
}