class Turnstile < Formula
  desc "Machine-wide, memory-aware gate for builds and tests on macOS"
  homepage "https://github.com/mcclowes/turnstile"
  url "https://github.com/mcclowes/homebrew-turnstile/releases/download/v0.8.0/turnstile-0.8.0-macos.tar.gz"
  sha256 "912203fc0350bf94582ead74e68695dd74876c54215c96b9eb3f400318b746b2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "turnstile"
  end

  def caveats
    <<~EOS
      Put the shims on PATH (once per machine), then check the install:
        turnstile init
        turnstile doctor
      Upgrades carry over; there's no need to rerun init.
      For the menu bar app: brew install --cask mcclowes/turnstile/turnstile-app
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/turnstile --version").strip
  end
end
