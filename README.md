# Plutus Repl Issue
A minimum reproducible example of the PlutusTx GHC Plugin error I've encountered.

I'm experiencing this error on NixOS running GHC 8.8.2.

To observe the error, run `cabal v2-repl` in this project's directory. The output I receive on doing so is:
```
$ cabal v2-repl
Build profile: -w ghc-8.8.2 -O1
In order, the following will be built (use -v for more details):
 - plutus-repl-issue-0.1.0.0 (lib) (ephemeral targets)
Preprocessing library for plutus-repl-issue-0.1.0.0..
GHCi, version 8.8.2: https://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling PlutusReplIssue  ( PlutusReplIssue.hs, interpreted )
GHC Core to PLC plugin: Found invalid marker, not applied correctly
  plc
> 
```

Note that building the project with `cabal v2-build` yields no errors.
```
$ cabal v2-build
Build profile: -w ghc-8.8.2 -O1
In order, the following will be built (use -v for more details):
 - plutus-repl-issue-0.1.0.0 (lib) (first run)
Preprocessing library for plutus-repl-issue-0.1.0.0..
Building library for plutus-repl-issue-0.1.0.0..
[1 of 1] Compiling PlutusReplIssue  ( PlutusReplIssue.hs, /tutorial-walkthrough/dist-newstyle/build/x86_64-linux/ghc-8.8.2/plutus-repl-issue-0.1.0.0/build/PlutusReplIssue.o )
$
```
