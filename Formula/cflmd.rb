class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v1.1.0/cflmd-macos-arm64.tar.gz"
      sha256 "28915ef9694fb0b5eb3a35bac35f2c5d1389e9acab8b311038d81f05d6e563ec"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v1.1.0/cflmd-macos-x64.tar.gz"
      sha256 "7d66b606f7e62a5a7bd3c5c6953fda4d780b08f30d374002ad461b4fbb3fc6f4"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v1.1.0/cflmd-linux-x64.tar.gz"
    sha256 "1a6ac28a305f702f756922c1c4f42eba0e695f44eb83fd85a70da0c6f07e7488"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
