class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.6/codeowners-tool_v0.0.6_darwin_arm64.tar.gz"
      sha256 "2e196a99f2151d2f31b2936d4584f20cdb4dfa2a876904775c6c2cd3109bb4fb"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.6/codeowners-tool_v0.0.6_darwin_amd64.tar.gz"
      sha256 "2bbad472063c1abda0a6a9e98aa6576eb72ce1c862ee0ed4fcdfebd44e328726"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.6/codeowners-tool_v0.0.6_linux_arm64.tar.gz"
      sha256 "1b68d049d86d426da752cfed05d763cfe89cf35fecc2b9bd077811becc69da19"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.6/codeowners-tool_v0.0.6_linux_amd64.tar.gz"
      sha256 "23fa91fc7081e5616137c832127da4c558bc7d9e6a679d26d1165c0c006adb65"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
