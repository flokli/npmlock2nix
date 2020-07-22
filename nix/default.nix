let
  sources = import ./sources.nix;
in import sources.nixpkgs {
  overlays = [
    (self: super: {
      npmlock2nix = self.callPackage ../default.nix {};
    })
  ];
}