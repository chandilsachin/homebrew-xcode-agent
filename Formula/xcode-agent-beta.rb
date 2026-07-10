class XcodeAgentBeta < Formula
  desc "Agent-friendly CLI for Xcode/iOS development (release candidate)"
  homepage "https://github.com/chandilsachin/xcode-agent"
  version "0.2.0-rc.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chandilsachin/xcode-agent/releases/download/v0.2.0-rc.5/xcode-agent-0.2.0-arm64-apple-macosx.tar.gz"
      sha256 "e5c193f5b19d99a006c30660b3d70c4132d7e8d71de8b20768876bf5819f365f"
    end
  end

  def install
    bin.install "xcode-agent"
  end

  test do
    assert_match version.to_s.split("-").first, shell_output("#{bin}/xcode-agent version")
  end
end
