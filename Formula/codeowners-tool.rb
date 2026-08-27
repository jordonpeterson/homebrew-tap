class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.30/codeowners-tool_v0.0.30_darwin_arm64.tar.gz"
      sha256 "175cac697a7752901a2167c3d46e42dbef95dfe23a905d5a54adbd1ee7edb509"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.30/codeowners-tool_v0.0.30_darwin_amd64.tar.gz"
      sha256 "dd7b92ccc0caa80dad202daa9c3d12bb453a233ff8044c532f29eb9f59af31e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.30/codeowners-tool_v0.0.30_linux_arm64.tar.gz"
      sha256 "3e2277ad7cf067f39321b04dc4da519207b508ff4e0b0ef88be0ddf7ea413540"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.30/codeowners-tool_v0.0.30_linux_amd64.tar.gz"
      sha256 "eccbf72775903e94795d7473370d9a1fb750c8ce1cbbe0cb5f5db3e1e06c55c5"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
