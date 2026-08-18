class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.11/codeowners-tool_v0.0.11_darwin_arm64.tar.gz"
      sha256 "ae0dbee455f4227a9c0e3301475d1cdd6e218fdece930ec45ff28e107080fef4"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.11/codeowners-tool_v0.0.11_darwin_amd64.tar.gz"
      sha256 "9c6685750c8c3e6990756d8b1b9589f7559baef64ec114666ea90b17951d98fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.11/codeowners-tool_v0.0.11_linux_arm64.tar.gz"
      sha256 "fb27514578a02d020c4b7c83315a26632bfd25ca7c55071d8526353804e96605"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.11/codeowners-tool_v0.0.11_linux_amd64.tar.gz"
      sha256 "c26d4cc2d1e731b4792b93bc6d1c87b65e55b062cd19bed2af87ebe8713d6a3a"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
