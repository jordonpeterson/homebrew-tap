class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.2/codeowners-tool_v0.0.2_darwin_arm64.tar.gz"
      sha256 "f96c10befa51e09fa30484e6e04b83cc70afb44173398090f955b75040ee913d"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.2/codeowners-tool_v0.0.2_darwin_amd64.tar.gz"
      sha256 "8c2d360fad649ee66098aac3ef12f27c276078360c96a4d75ea41a95496ac501"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.2/codeowners-tool_v0.0.2_linux_arm64.tar.gz"
      sha256 "20026905763d138c6e81181b159f6915e43c22f57648d992ff53453558bda443"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.2/codeowners-tool_v0.0.2_linux_amd64.tar.gz"
      sha256 "3458c0736bec125a202b0a0fb50114b7b846395369f64c5f2b184a6fe161edd3"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
