cask "turnstile-app" do
  version "0.8.1"
  sha256 "6a634ba789023f5b00ac4c3d93c336a01976e7fd9952d741bf76be0582c4cfd7"

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
