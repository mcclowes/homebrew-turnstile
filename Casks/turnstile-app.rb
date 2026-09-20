cask "turnstile-app" do
  version "0.4.0"
  sha256 "77587a1d06a41b74e212d91520a2b7e5048249d094993b011d941055fb27f45f"

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
