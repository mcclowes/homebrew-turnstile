cask "turnstile-app" do
  version "0.9.0"
  sha256 "daba1eea11376dd2c449166a8375c0ef8a8db729b0bae615f56431edf96baa43"

  url "https://github.com/mcclowes/homebrew-turnstile/releases/download/v#{version}/Turnstile-#{version}.zip"
  name "Turnstile"
  desc "Menu bar app for turnstile, the gate for builds and tests"
  homepage "https://github.com/mcclowes/turnstile"

  depends_on formula: "mcclowes/turnstile/turnstile"
  depends_on macos: :ventura

  app "Turnstile.app"

  uninstall quit: "com.mcclowes.turnstile"

  zap trash: "~/Library/Preferences/com.mcclowes.turnstile.plist"

  caveats <<~EOS
    Open Turnstile once, then turn on "Launch at login" from its menu.
    If you haven't already, put the shims on PATH:
      turnstile init
  EOS
end
