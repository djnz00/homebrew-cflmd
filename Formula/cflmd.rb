class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v1.1.1/cflmd-macos-arm64.tar.gz"
      sha256 "0b97d64614f22309221ace0c8aabafd198d30ece1982c8201c2732e8ec471c92"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v1.1.1/cflmd-macos-x64.tar.gz"
      sha256 "b72d684a68f3d89e44e2cfa0f3100fc175f3dc5036e6289168f47056d3be6297"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v1.1.1/cflmd-linux-x64.tar.gz"
    sha256 "1501145b32e298bd445761a67016f78b70e5108fc0efe79c02c295b88649be9a"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
