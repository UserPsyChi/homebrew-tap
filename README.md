# homebrew-tap

Homebrew tap for [Nonfat](https://nonfat.ai) — token-efficiency CLI for AI coding tools.

**Status:** formula name `nonfat` is reserved here. Stable install lands when `UserPsyChi/nonfat-cli` is public and tagged `v0.1.0`.

## Install (when released)

```sh
brew install UserPsyChi/tap/nonfat
```

Direct tap (optional):

```sh
brew tap UserPsyChi/tap
brew install nonfat
```

## Verify reservation

```sh
brew search nonfat          # => userpsychi/tap/nonfat
brew info UserPsyChi/tap/nonfat
```

## Namespace

| Path | Status |
|---|---|
| `UserPsyChi/tap/nonfat` | **Active** — this repo |
| `nonfat/tap/nonfat` | Blocked until GitHub user [`nonfat`](https://github.com/nonfat) is recovered or `UserPsyChi` is renamed |
| `brew install nonfat` (core) | Name free in homebrew-core; submit PR after public OSS release |

## Release automation

Tagged `v*` builds in `nonfat-cli` update this formula with pinned `url` + `sha256` and remove `disable!` (WP-A10 `release.yml`).
