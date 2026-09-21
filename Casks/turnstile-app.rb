cask "turnstile-app" do
  version "0.5.0"
  sha256 "d02b49f23372256310f09459868491d33175713126bc6e9e54b3f67d7cf46f69"

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
