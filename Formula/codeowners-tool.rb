class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.16/codeowners-tool_v0.0.16_darwin_arm64.tar.gz"
      sha256 "89745ce1ad2945d26aa7f20f6e01670e308e7c11b2763546edaf5186c845d7bb"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.16/codeowners-tool_v0.0.16_darwin_amd64.tar.gz"
      sha256 "7a9345ec0c85e29e9ea2d9cc7e94e853b03570b479e0d63c31d304a5b7080f1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.16/codeowners-tool_v0.0.16_linux_arm64.tar.gz"
      sha256 "242ebdb44ec21852849e6e84f44e892d962554b9d41ea8619b0ae47d2425ec42"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.16/codeowners-tool_v0.0.16_linux_amd64.tar.gz"
      sha256 "a6b87a44294efd962c5761bd4e39935a70db29a41332ae51873c3a12d677ecb4"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
