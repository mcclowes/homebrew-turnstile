# homebrew-turnstile

Homebrew tap for [turnstile](https://github.com/mcclowes/turnstile), the machine-wide, memory-aware gate for builds and tests.

```bash
brew install mcclowes/turnstile/turnstile                                # CLI only
brew install mcclowes/turnstile/turnstile mcclowes/turnstile/turnstile-app  # CLI + menu bar app
turnstile init
```

Name the formula alongside the app: Homebrew only trusts third-party formulae you name, so `brew install --cask mcclowes/turnstile/turnstile-app` on its own refuses to load the CLI it depends on, unless you've run `brew trust mcclowes/turnstile`.

The CLI is the product. The menu bar app is a view onto its daemon, so the cask depends on the formula rather than bundling its own copy. Uninstalling the app leaves the CLI in place.

Requires macOS 26 (Tahoe) or later, on Apple silicon or Intel. The app is signed and notarized. Both files are updated by turnstile's `scripts/release.sh`.

## Checks

GitHub Actions checks every push and pull request with stable Homebrew on macOS 26. It checks both packages' style and strict audits, installs the CLI, runs the formula's version test, and fetches the app archive to verify its checksum. The job checks the current tap checkout. It doesn't run `turnstile init`, start the daemon, or install or launch the app.
