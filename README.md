# homebrew-turnstile

Homebrew tap for [turnstile](https://github.com/mcclowes/turnstile), the machine-wide, memory-aware gate for builds and tests.

```bash
brew install mcclowes/turnstile/turnstile             # CLI only
brew install --cask mcclowes/turnstile/turnstile-app  # CLI + menu bar app
turnstile init
```

The CLI is the product. The menu bar app is a view onto its daemon, so the cask depends on the formula rather than bundling its own copy. Uninstalling the app leaves the CLI in place.

Requires macOS 13 (Ventura) or later, on Apple Silicon or Intel. The app is signed and notarized. Both files are updated by turnstile's `scripts/release.sh`.
