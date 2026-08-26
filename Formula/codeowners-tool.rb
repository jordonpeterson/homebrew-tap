class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.28/codeowners-tool_v0.0.28_darwin_arm64.tar.gz"
      sha256 "3334d599c470b0eed8829dbc05d068cf614280fc5da66f8a6fd99f0de92159da"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.28/codeowners-tool_v0.0.28_darwin_amd64.tar.gz"
      sha256 "4c11196e6e823c67be75c7948f885fb30aeaaa45efe4d9e26021fc12305bf614"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.28/codeowners-tool_v0.0.28_linux_arm64.tar.gz"
      sha256 "bb9517c9230c7c017dfa60caf29b7270ccd973b673e9c44e816dc8f5da7f728d"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.28/codeowners-tool_v0.0.28_linux_amd64.tar.gz"
      sha256 "4af8a73d2dc7fcaac859c5e9640157118440c9614db3a1f17f835cc7df5c47e9"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
