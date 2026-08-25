class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.18/codeowners-tool_v0.0.18_darwin_arm64.tar.gz"
      sha256 "9dd52d2cb31e8335cc8aeffcb3b6c7e0758e0948103387fb2e7daf3a7b595dcf"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.18/codeowners-tool_v0.0.18_darwin_amd64.tar.gz"
      sha256 "6fadeac05e6240ec770cd8a30fac6bcf15c77d531a31fa3c58bc96a27d50d855"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.18/codeowners-tool_v0.0.18_linux_arm64.tar.gz"
      sha256 "af2b494afd9e13281deb2841b735a7b988beb3ee994fa8342a5db5ff2c49b773"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.18/codeowners-tool_v0.0.18_linux_amd64.tar.gz"
      sha256 "2600b3cae2f53e96933fe39b0faa306019ca3756004b9030cccab888c49cb99e"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
