class XcodeAgentBeta < Formula
  desc "Agent-friendly CLI for Xcode/iOS development (release candidate)"
  homepage "https://github.com/chandilsachin/xcode-agent"
  version "0.2.0-rc.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chandilsachin/xcode-agent/releases/download/v0.2.0-rc.4/xcode-agent-0.2.0-arm64-apple-macosx.tar.gz"
      sha256 "92a93d7e832958202ed846734e9d227418308d33516187a00284eb93cf6c59ab"
    end
  end

  def install
    bin.install "xcode-agent"
  end

  test do
    assert_match version.to_s.split("-").first, shell_output("#{bin}/xcode-agent version")
  end
end
