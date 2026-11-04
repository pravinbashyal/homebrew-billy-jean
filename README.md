# homebrew-billy-jean

This is a **personal Homebrew tap** for [Billy Jean](https://github.com/pravinbashyal/billy-jean), maintained by [@pravinbashyal](https://github.com/pravinbashyal). It is **not** an official Homebrew Cask / `homebrew-cask` tap, and it is not affiliated with Homebrew.

The Cask in this tap installs an **unsigned, non-notarized** (ad-hoc signed) build of Billy Jean produced by the project's own GitHub Releases. Homebrew quarantines this app on install like any other downloaded software, so first launch may be blocked by Gatekeeper. See the main project README's ["Unsigned build" section](https://github.com/pravinbashyal/billy-jean#unsigned-build) for how to override this.

## Install

```sh
brew tap pravinbashyal/billy-jean
brew install --cask billy-jean
```

This installs `Billy Jean.app` into `/Applications`.

## Upgrade

```sh
brew update
brew upgrade --cask billy-jean
```

## Uninstall

```sh
brew uninstall --cask billy-jean
```

To also delete saved sender and bank details, use `brew uninstall --cask --zap billy-jean`. A plain uninstall keeps them.

## Untap

```sh
brew untap pravinbashyal/billy-jean
```

## About Billy Jean

Billy Jean is an open-source desktop app for writing invoices as PDF files. See the main project repository for source code, issues, and releases: https://github.com/pravinbashyal/billy-jean
