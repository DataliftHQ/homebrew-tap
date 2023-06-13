# Datalift Homebrew Tap

> :warning: Datalift is currently **under heavy development and is not considered stable yet**. This means that there may be bugs or unexpected behavior, and we don't recommend using it in production.

## What is Homebrew?

Package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable
packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install packages from here?

```sh
brew install DataliftHQ/tap/name
```

You can also only add the tap which makes formulae within it
available in search results (`brew search` output):

```sh
brew tap DataliftHQ/tap
```

Note: to clone the tap via SSH you will need to use:

```sh
brew tap DataliftHQ/tap https://github.com/DataliftHQ/homebrew-tap
```

While you may search across taps, it is necessary to always use
fully qualified name (incl. the `DataliftHQ/tap/` prefix)
when refering to formulae in external taps such as this one
outside of search.

## What packages are available?

With the following commands, you can install the latest generally available (GA) version of each product:
```sh
# Formulae
brew install DataliftHQ/tap/datalift
```

Prereleases (including as alpha's, beta's, and release candidates) will not be available in this tap.
