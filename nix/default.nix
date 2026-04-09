{ stdenv, ... }:

stdenv.mkDerivation {
  pname = "steam-session-nix";
  version = "0.0.1";
  src = ./.;

  installPhase = ''
    install -Dm755 usr/bin/steam-session                                  $out/bin/steam-session
    install -Dm755 usr/bin/jupiter-biosupdate                             $out/bin/jupiter-biosupdate
    install -Dm755 usr/bin/steamos-select-branch                          $out/bin/steamos-select-branch
    install -Dm755 usr/bin/steamos-session-select                         $out/bin/steamos-session-select
    install -Dm755 usr/bin/steamos-update                                 $out/bin/steamos-update
    install -Dm755 usr/bin/steamos-polkit-helpers/jupiter-biosupdate      $out/bin/steamos-polkit-helpers/jupiter-biosupdate
    install -Dm755 usr/bin/steamos-polkit-helpers/steamos-set-timezone    $out/bin/steamos-polkit-helpers/steamos-set-timezone
    install -Dm755 usr/bin/steamos-polkit-helpers/steamos-update          $out/bin/steamos-polkit-helpers/steamos-update
    install -Dm644 usr/share/wayland-sessions/steam.desktop               $out/share/wayland-sessions/steam.desktop
  '';
}
