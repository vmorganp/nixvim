# Nixvim template

This template gives you a good starting point for configuring nixvim standalone.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
NIXPKGS_ALLOW_UNFREE=1 nix run . --impure
```

To build it for actual use,

```
NIXPKGS_ALLOW_UNFREE=1 nix build . --impure
```

On a system with nix and don't want to clone my stuff to use it?

```
NIXPKGS_ALLOW_UNFREE=1 nix run github:vmorganp/nixvim --impure
```

# Links

Inspired by: https://www.youtube.com/watch?v=b641h63lqy0
Documented at: https://nix-community.github.io/nixvim/
