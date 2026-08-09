class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.8/codeowners-tool_v0.0.8_darwin_arm64.tar.gz"
      sha256 "e6c7bfa7a6f91752396c315bb6dcf26693618585ebe6d7df8f5dbb7a9651306b"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.8/codeowners-tool_v0.0.8_darwin_amd64.tar.gz"
      sha256 "db27c400de50bc89b0e149fe9875c01ab050e078c856473bdf2063335354af5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.8/codeowners-tool_v0.0.8_linux_arm64.tar.gz"
      sha256 "01261b1845ad069be0bf8afce2446b89afc216fc158683f2f17da4c08930eb26"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.8/codeowners-tool_v0.0.8_linux_amd64.tar.gz"
      sha256 "8536dca05be31b81685266e3f92d0fdad37d47bf0267b3a3bfe5d977d8627213"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
