# steam-session-nix
Steam session under gamescope, tweaked for NixOS.

## List of tweaks
- Exporting variables for a better compatibility under xwayland
- Fixes issues related to the SteamOS updates.

## Adding on your nix config

First add the steam-session flake to your flake.nix

```nix
steam-session = {
  url = "github:sirdonot/steam-session-nix";
  inputs.nixpkgs.follows = "nixpkgs";
};
```

Adding steam-session to your environment.systemPackages

```nix
{ inputs, ...}:

{
  environment.systemPackages = [
    inputs.steam-session.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
```
After rebuilding, steam-session will be installed on your system. 
