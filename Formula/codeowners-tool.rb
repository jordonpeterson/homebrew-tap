class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.12/codeowners-tool_v0.0.12_darwin_arm64.tar.gz"
      sha256 "3ee6eac50a534c0331fee9ac2726d48a855e28eec66bb8dfa3b1988f4af8e185"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.12/codeowners-tool_v0.0.12_darwin_amd64.tar.gz"
      sha256 "96e337be7e96d7350ece3826fbc6d840a94bfa59b56576e86e92699d4cc551d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.12/codeowners-tool_v0.0.12_linux_arm64.tar.gz"
      sha256 "1c8120053a7f656f505d7c9d076e4ec63466443e73598a3aae40be4981a454a9"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.12/codeowners-tool_v0.0.12_linux_amd64.tar.gz"
      sha256 "335d6031c49c54b92efd0cd0d6aeac113a8c5c08a0a8b5f3600d4b717022c91b"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
