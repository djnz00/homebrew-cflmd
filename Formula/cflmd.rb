class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v0.4.1/cflmd-macos-arm64.tar.gz"
      sha256 "d76479ba2b80c3bc4fbe079f8b1c3f5bd3ed49f93801f209cfba74635b5e417c"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v0.4.1/cflmd-macos-x64.tar.gz"
      sha256 "94c82f573c3067947e77295466318cf2541a226b80f1ac68eb42fd7c7849e886"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v0.4.1/cflmd-linux-x64.tar.gz"
    sha256 "2dd5f0c904538500ef06c3834b028009d56473a1983ce336a6a63060d777be76"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
