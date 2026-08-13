class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.9/codeowners-tool_v0.0.9_darwin_arm64.tar.gz"
      sha256 "4b27a8dd3917e88f2e6b896f6ec6477ea7b52ffb9978570864cd20268b6e25e4"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.9/codeowners-tool_v0.0.9_darwin_amd64.tar.gz"
      sha256 "9d96bc266c7047f88401a123d50a44d29227d0edd774e4f220aa7d01ce704ec1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.9/codeowners-tool_v0.0.9_linux_arm64.tar.gz"
      sha256 "6c3d09dff015cda3876a98daa75ac71066766a039ed3decc8ec84857f203a962"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.9/codeowners-tool_v0.0.9_linux_amd64.tar.gz"
      sha256 "63e0f8adfda56d4f625119c49f9ca761d97f5bab6ce4a348af961d20de0def98"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
