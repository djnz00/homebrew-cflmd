class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "MIT"
  version "2.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.4/cflmd-macos-arm64.tar.gz"
      sha256 "e92b957916f2838740f33fa0976a13c250e7133a43c67e51e7600ca668b9fdc7"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.4/cflmd-macos-x64.tar.gz"
      sha256 "7910d653e4311aed15050bcd4de59c0a26cd435e54dc550ca3b5a9ff6473715d"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v2.3.4/cflmd-linux-x64.tar.gz"
    sha256 "23db5c1516e08cf6f15885c5af5117cf52ae784f8d4fa6f28954fd2b3bc94ae7"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
