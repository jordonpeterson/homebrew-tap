class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v1.0.1/codeowners-tool_v1.0.1_darwin_arm64.tar.gz"
      sha256 "5128e382ce42cccd75562689eece8558576814235332cb5bf8d4a26cff6c9844"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v1.0.1/codeowners-tool_v1.0.1_darwin_amd64.tar.gz"
      sha256 "868980cce02d364d26df037595fa443885eab6beb4e1af89a3f2ca942e71abad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v1.0.1/codeowners-tool_v1.0.1_linux_arm64.tar.gz"
      sha256 "35c1bd2146bc5652deaaa0b18e5e445091ec9449fe988823227142359d48f1e1"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v1.0.1/codeowners-tool_v1.0.1_linux_amd64.tar.gz"
      sha256 "fca4f2e4cd184fb03614b6f636e37c1e23125146798e6906c6d0c85d37aed020"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
