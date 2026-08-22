class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.14/codeowners-tool_v0.0.14_darwin_arm64.tar.gz"
      sha256 "579cddf418e45d01c9bade61f7949d14bdc3b1427fd22306891cc45e22b72cf5"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.14/codeowners-tool_v0.0.14_darwin_amd64.tar.gz"
      sha256 "f59bc881d706db1e0ff6bb7fd0b179c3b0bed6fb4962152849f9bc72a08f25c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.14/codeowners-tool_v0.0.14_linux_arm64.tar.gz"
      sha256 "d275320c2f6e4bbe232ff3c9beb355637f39f85904913c8171da4bf438fca997"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.14/codeowners-tool_v0.0.14_linux_amd64.tar.gz"
      sha256 "1963c836759dad6c9bc2993357707e9ab0d31818b4b8cf471458dd2af6d9a9cc"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
