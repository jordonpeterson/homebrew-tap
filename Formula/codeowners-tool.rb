class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.17/codeowners-tool_v0.0.17_darwin_arm64.tar.gz"
      sha256 "2e0e12838e90849d64c4e08352ebd04d67e99c340d23959c309915c21f5c7b2c"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.17/codeowners-tool_v0.0.17_darwin_amd64.tar.gz"
      sha256 "f3f8e249530014535705516366a6d0baca035f30ca35ba020c31423d2d7428cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.17/codeowners-tool_v0.0.17_linux_arm64.tar.gz"
      sha256 "10a136c17dc6b685caa7f12a518f1363bf28bd96b50e163d17b7e93eac390cb2"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.17/codeowners-tool_v0.0.17_linux_amd64.tar.gz"
      sha256 "7f1c5c640420678c655b7a0d1cb0c016014abe424a21427d76e73f8fb43a1016"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
