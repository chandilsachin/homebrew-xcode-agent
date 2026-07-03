class XcodeAgentBeta < Formula
  desc "Agent-friendly CLI for Xcode/iOS development (release candidate)"
  homepage "https://github.com/chandilsachin/xcode-agent"
  version "0.2.0-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chandilsachin/xcode-agent/releases/download/v0.2.0-rc.2/xcode-agent-0.2.0-arm64-apple-macosx.tar.gz"
      sha256 "21025a407edea6257b25dfcdc73abfc9400f9e2e0185241ee50f453d3aa32e6f"
    end
  end

  def install
    bin.install "xcode-agent"
  end

  test do
    assert_match version.to_s.split("-").first, shell_output("#{bin}/xcode-agent version")
  end
end
