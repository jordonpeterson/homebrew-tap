class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.13/codeowners-tool_v0.0.13_darwin_arm64.tar.gz"
      sha256 "f08bdbc32291d47934576dd651435fa1a3042470b21d7001d84739c380ee06d5"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.13/codeowners-tool_v0.0.13_darwin_amd64.tar.gz"
      sha256 "6d8f778d0d1d0aa1e800d24c8e1342b2f889fe2ee98459786263349e8ca008b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.13/codeowners-tool_v0.0.13_linux_arm64.tar.gz"
      sha256 "e1490d2209fd8fd793d69fc454be8554148d47cb4c6b712d56763bda2f91fa0e"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.13/codeowners-tool_v0.0.13_linux_amd64.tar.gz"
      sha256 "5463fc279db9ede8611734368d0366be5b59969634b6ddee019a975bfd08be32"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
