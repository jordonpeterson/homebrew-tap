class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.7/codeowners-tool_v0.0.7_darwin_arm64.tar.gz"
      sha256 "b21b0da6178283214e7a656ee7a7defcf1ee839e9602878338ef78bc34bd5b1f"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.7/codeowners-tool_v0.0.7_darwin_amd64.tar.gz"
      sha256 "5db0cfc5cf8248d92e18805e76c11031518c27b3ad63b231b20ee16f50e029b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.7/codeowners-tool_v0.0.7_linux_arm64.tar.gz"
      sha256 "8c6f951062599ea537c0a579e5a6b6313b6ac29bf943567e4686a821fff1c92a"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.7/codeowners-tool_v0.0.7_linux_amd64.tar.gz"
      sha256 "cbed2afd6939d5d91f4b1ae5d825c974890e56cfbc4658d950ff019c0d6869e4"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
