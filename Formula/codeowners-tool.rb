class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v1.0.0/codeowners-tool_v1.0.0_darwin_arm64.tar.gz"
      sha256 "e47e94a6e16bd93347e7a1a9c8d440f4aa774296fe35c08cc260bf3892c51284"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v1.0.0/codeowners-tool_v1.0.0_darwin_amd64.tar.gz"
      sha256 "e2ed3503a5391ac5537264d90637c60077736b964c3a3e19df5e94db7a770542"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v1.0.0/codeowners-tool_v1.0.0_linux_arm64.tar.gz"
      sha256 "c18ae0ccdf124b5624ba31f91d4383041e7b239207310f186b9616ee3b31eba7"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v1.0.0/codeowners-tool_v1.0.0_linux_amd64.tar.gz"
      sha256 "7c8e520c04f22ffd7a6fe9ba84d8ca5bd1d08c73680c9c07861c3655fc34b2f8"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
