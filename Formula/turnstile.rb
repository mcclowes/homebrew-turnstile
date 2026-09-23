class Turnstile < Formula
  desc "Machine-wide, memory-aware gate for builds and tests on macOS"
  homepage "https://github.com/mcclowes/turnstile"
  url "https://github.com/mcclowes/homebrew-turnstile/releases/download/v0.8.2/turnstile-0.8.2-macos.tar.gz"
  sha256 "bd628d78b32fa7a5568864f9bcbfeb8b5f44808676fcb8344967b99bb4938e0c"
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
