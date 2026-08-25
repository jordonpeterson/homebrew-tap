class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.21/codeowners-tool_v0.0.21_darwin_arm64.tar.gz"
      sha256 "28564e07e08c969a45809df8dd7098ef55a3d4400dd22b928ffcaf3e13897b30"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.21/codeowners-tool_v0.0.21_darwin_amd64.tar.gz"
      sha256 "e462a82d5d26b6e5df5a07f2c6b0b8d867ad93d6591e601457204b05c53f186e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.21/codeowners-tool_v0.0.21_linux_arm64.tar.gz"
      sha256 "4805c8e271eb24bce0ef40bcf7463890d86a9b17a8b8f5e49a846f80e0ca990f"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.21/codeowners-tool_v0.0.21_linux_amd64.tar.gz"
      sha256 "18289dbf05b310737357d1be12cfe8137445477bee6056cdc7f8bc4b42e45933"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
