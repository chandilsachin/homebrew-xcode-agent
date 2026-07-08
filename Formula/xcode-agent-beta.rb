class XcodeAgentBeta < Formula
  desc "Agent-friendly CLI for Xcode/iOS development (release candidate)"
  homepage "https://github.com/chandilsachin/xcode-agent"
  version "0.2.0-rc.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chandilsachin/xcode-agent/releases/download/v0.2.0-rc.3/xcode-agent-0.2.0-arm64-apple-macosx.tar.gz"
      sha256 "23fcdf46b2d3a93c2c0609c5ab9f5d1a0766a0467bb55be6459123f338bffa35"
    end
  end

  def install
    bin.install "xcode-agent"
  end

  test do
    assert_match version.to_s.split("-").first, shell_output("#{bin}/xcode-agent version")
  end
end
