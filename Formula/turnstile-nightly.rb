class TurnstileNightly < Formula
  desc "Machine-wide, memory-aware gate for builds and tests on macOS"
  homepage "https://github.com/mcclowes/turnstile"
  url "https://github.com/mcclowes/homebrew-turnstile/releases/download/nightly-homebrew-40993282369-1/turnstile-0.9.0-macos.tar.gz"
  sha256 "4e572a658cde3b9238bfc62d0823e0650d95a7fa840e07704aa841b0b75e2426"
  version "0.9.0"
  revision 1793328456
  conflicts_with "turnstile"
  license "MIT"

  depends_on macos: :tahoe

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
