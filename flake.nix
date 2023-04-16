{
  description = "Trouble with nix develop --check";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.default =
      nixpkgs.legacyPackages.x86_64-linux.stdenv.mkDerivation {
        name = "example";
        src = ./.;
        doCheck = true;
      };

  };
}
