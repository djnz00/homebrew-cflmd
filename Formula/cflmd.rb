class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v0.4.0/cflmd-macos-arm64.tar.gz"
      sha256 "8001da3bb9ccdb8724c0a94e83e4be3398e4f9abe5f0a367f6c2690508ce8bb3"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v0.4.0/cflmd-macos-x64.tar.gz"
      sha256 "e0c390e26069025811a5bf4a765b53459d7e4f502ca93789696c14d904c76e60"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v0.4.0/cflmd-linux-x64.tar.gz"
    sha256 "c8a17fc2083a59727a7fdb5f43e26acd669eadcaa94a7f0b29839c762bcc4ae8"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
