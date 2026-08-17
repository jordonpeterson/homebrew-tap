class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.10/codeowners-tool_v0.0.10_darwin_arm64.tar.gz"
      sha256 "e9ec497e8482992e77f6b2ecd593614e05aeb81cbcd22a7d324492b979fd4686"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.10/codeowners-tool_v0.0.10_darwin_amd64.tar.gz"
      sha256 "e273d2333b02d5dd30686d08869dad3d94a6f5b11c2b0a3a7fc278718ffddf58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.10/codeowners-tool_v0.0.10_linux_arm64.tar.gz"
      sha256 "f5809cc538148309bf1a522851be0ac2ab1f5d8ad39b38c20171bf43afaa8ed0"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.10/codeowners-tool_v0.0.10_linux_amd64.tar.gz"
      sha256 "8d899ed676a834983dcb5b01596e9232942d52a98ee23c08b74c69ef39281f38"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
