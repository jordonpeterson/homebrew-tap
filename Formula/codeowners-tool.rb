class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.22/codeowners-tool_v0.0.22_darwin_arm64.tar.gz"
      sha256 "35e46dd6adb1f6b7cd2d5989de3b2491e97b8a19d5de9f32bae27311d318df0c"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.22/codeowners-tool_v0.0.22_darwin_amd64.tar.gz"
      sha256 "9cfe875dedfa0aadce728d0c4197daaf7ddf2f03f4726dbb53ed0fa822744940"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.22/codeowners-tool_v0.0.22_linux_arm64.tar.gz"
      sha256 "7b90180ad3dad7e95f6ffdead0d58a98bba0950526a7aebdfc688543661fdefd"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.22/codeowners-tool_v0.0.22_linux_amd64.tar.gz"
      sha256 "527cb77ecd7401b993c11971892ca99f0fdd046ee67c2ca7be9b6e0cb4b8a15a"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
