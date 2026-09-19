cask "turnstile-app" do
  version "0.3.1"
  sha256 "47766c6eae404a88d0de8dfe697d0c368b77e2576ee86cba27c62fc9aa486352"

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
