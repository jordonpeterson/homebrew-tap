class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.15/codeowners-tool_v0.0.15_darwin_arm64.tar.gz"
      sha256 "324c471c640149055c6bf66a86290b9a7d41117fb5eb3d8ad1adaddbba14296f"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.15/codeowners-tool_v0.0.15_darwin_amd64.tar.gz"
      sha256 "9824af778601d6b21a8330193947cfa5ca9057a29e13f94b0e7a508702e0d05c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.15/codeowners-tool_v0.0.15_linux_arm64.tar.gz"
      sha256 "b4ea55679df45a7ba8a9cfdc24e5e76f558b2d3a3fb47bce6fdf3c2e578119a6"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.15/codeowners-tool_v0.0.15_linux_amd64.tar.gz"
      sha256 "9d3508a9ea0e00364df09dfe97acce77a4eeec68c3e8d03cc6b0df5b774dbfb9"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
