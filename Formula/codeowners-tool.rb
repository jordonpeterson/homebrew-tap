class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.1/codeowners-tool_v0.0.1_darwin_arm64.tar.gz"
      sha256 "c44bf06bbc176252f5c9f15b9609c5872fceb766a879f3e0587af850fa577958"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.1/codeowners-tool_v0.0.1_darwin_amd64.tar.gz"
      sha256 "b5201a7a8abc5ac73344c19afa0db5e5ca6696bcf122c3c18ce03da55185c1b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.1/codeowners-tool_v0.0.1_linux_arm64.tar.gz"
      sha256 "80accc3189d61b8d6bfc0c4df2a2e21d5f4abed116193140842c39a2430d486f"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.1/codeowners-tool_v0.0.1_linux_amd64.tar.gz"
      sha256 "4e5918019bb10f48a7da13b2b56500088e21134f83d17f4d61ea9ffb27d6a3ee"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
