class XcodeAgent < Formula
  desc "Agent-friendly CLI for Xcode/iOS development"
  homepage "https://github.com/chandilsachin/xcode-agent"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chandilsachin/xcode-agent/releases/download/v0.1.0/xcode-agent-0.1.0-arm64-apple-macosx.tar.gz"
      sha256 "0d637fd42febc0c78acb3e5af93180436d310d171f5caada91d624ad4971db61"
    end
  end

  def install
    bin.install "xcode-agent"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/xcode-agent version")
  end
end
