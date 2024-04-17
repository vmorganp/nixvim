# Nixvim template

This template gives you a good starting point for configuring nixvim standalone.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
NIXPKGS_ALLOW_UNFREE=1 nix run . --impure # until i figure out a better way to allow unfree
# nix run .
```

To build it for actual use,

```
nix build
```

On a system with nix and don't want to clone my stuff to use it

```
nix run github:vmorganp/nixvim
```

# Links

Inspired by: https://www.youtube.com/watch?v=b641h63lqy0
Documented at: https://nix-community.github.io/nixvim/
