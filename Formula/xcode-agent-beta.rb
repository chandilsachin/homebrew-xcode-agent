class XcodeAgentBeta < Formula
  desc "Agent-friendly CLI for Xcode/iOS development (release candidate)"
  homepage "https://github.com/chandilsachin/xcode-agent"
  version "0.1.0-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chandilsachin/xcode-agent/releases/download/v0.1.0-rc.1/xcode-agent-0.1.0-arm64-apple-macosx.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "xcode-agent"
  end

  test do
    assert_match version.to_s.split("-").first, shell_output("#{bin}/xcode-agent version")
  end
end
