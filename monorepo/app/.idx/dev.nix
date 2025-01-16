# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodejs_20
    pkgs.flyctl
    pkgs.yarn
    pkgs.yarn-bash-completion
  ];
  # Sets environment variables in the workspace
  env = {};
  services = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "tamasfe.even-better-toml"
    ];
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      # To run something each time the workspace is (re)started, use the `onStart` hook
    };
  };
}