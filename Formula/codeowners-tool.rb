class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.26/codeowners-tool_v0.0.26_darwin_arm64.tar.gz"
      sha256 "b6a247f81bc0033efd71c0a45172e52289bc07ed8e7451041a22ae907262bea0"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.26/codeowners-tool_v0.0.26_darwin_amd64.tar.gz"
      sha256 "ba2b4649c6abf99fd431eca6d2bc960656114afd25f5c6af5ef68452bcab9edf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.26/codeowners-tool_v0.0.26_linux_arm64.tar.gz"
      sha256 "cd2cabb277d2f47f7251de870d627fb8c96f145336b992e047e1138b180a8ba6"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.26/codeowners-tool_v0.0.26_linux_amd64.tar.gz"
      sha256 "8ff16529fa4fc274876fef18fca8dfdad031adbd3d8e725248f4793a9089e8ef"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
