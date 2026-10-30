cask "turnstile-app@nightly" do
  version "0.9.0,1793328456"
  sha256 "22631b0c934a7836db814a3ae8ed96850cbe949f87fbb97a28fe4b0dcb31fac6"

  url "https://github.com/mcclowes/homebrew-turnstile/releases/download/nightly-homebrew-40993282369-1/Turnstile-0.9.0.zip"
  name "Turnstile"
  desc "Menu bar app for turnstile, the gate for builds and tests"
  homepage "https://github.com/mcclowes/turnstile"

  depends_on formula: "mcclowes/turnstile/turnstile@nightly"
  depends_on macos: :tahoe

  conflicts_with cask: "turnstile-app"

  app "Turnstile.app"

  uninstall quit: "com.mcclowes.turnstile"

  zap trash: "~/Library/Preferences/com.mcclowes.turnstile.plist"

  caveats <<~EOS
    Open Turnstile once, then turn on "Launch at login" from its menu.
    If you haven't already, put the shims on PATH:
      turnstile init
  EOS
end
