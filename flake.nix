{
  description = "Servant / Halogen 5 Nix Template";

  inputs = {
    #Generic Stuff
    nixpkgs.follows = "purs-nix/nixpkgs";
    systems.url = "github:nix-systems/default";
    utils.url = "github:ursi/flake-utils";

    # Purescript stuff
    purs-nix.url = "github:purs-nix/purs-nix/ps-0.15";
    ps-tools.follows = "purs-nix/ps-tools";

    # Haskell stuff
    # haskell-nix.url = "github:input-output-hk/haskell.nix";

    # *2Nix

    npmlock2nix = {
      flake = false;
      url = "github:nix-community/npmlock2nix";
    };
  };

  outputs = {
    self,
    nixpkgs,
  }: {
    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;
  };
}
