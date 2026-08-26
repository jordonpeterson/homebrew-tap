class CodeownersTool < Formula
  desc "Safe, intent-level, verifiable CODEOWNERS changes"
  homepage "https://github.com/jordonpeterson/codeowners-tool"
  version "0.0.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.27/codeowners-tool_v0.0.27_darwin_arm64.tar.gz"
      sha256 "36301ce1d2406baf3819c00afd36bc1e0b0980182895aa726ac04557c9dbea93"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.27/codeowners-tool_v0.0.27_darwin_amd64.tar.gz"
      sha256 "9a88dac91f60b2b1b8a16a7992609713af9c5cadd3cbabed196e3999205f0bb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.27/codeowners-tool_v0.0.27_linux_arm64.tar.gz"
      sha256 "ecd471207d1fd741be13e4a91121d9141607ee917a2ce7ed14ddaa3c9a05cc55"
    else
      url "https://github.com/jordonpeterson/codeowners-tool/releases/download/v0.0.27/codeowners-tool_v0.0.27_linux_amd64.tar.gz"
      sha256 "ba4e9d1cb9f9e925778d6350caaa1e92bab091d8fb00ddc090db766a14533d2b"
    end
  end

  def install
    bin.install "codeowners-tool"
  end

  test do
    assert_match "codeowners-tool", shell_output("#{bin}/codeowners-tool --help")
  end
end
