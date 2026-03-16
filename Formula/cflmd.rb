class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v2.1.0/cflmd-macos-arm64.tar.gz"
      sha256 "934dcabc27736c4404b4746056d3e09d318f6b237f4fee5743e50358c50b5869"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v2.1.0/cflmd-macos-x64.tar.gz"
      sha256 "32f214a641884519a109af2385cd2f19dfe5c30d42528a2a2b399cb063b1c87a"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v2.1.0/cflmd-linux-x64.tar.gz"
    sha256 "3f6008f30275d71671b726b611f66d7a2156631e62486e166fb26b485e26382e"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
