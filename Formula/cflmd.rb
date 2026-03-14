class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v1.0.1/cflmd-macos-arm64.tar.gz"
      sha256 "4a35e12eabb236b096d9c53176d216e7d484b6ac1be16cd2f2079f33b7d49098"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v1.0.1/cflmd-macos-x64.tar.gz"
      sha256 "bf1c80f26003dae7d05d82320582b2fba33873699f786c105824b0d25a6ebde9"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v1.0.1/cflmd-linux-x64.tar.gz"
    sha256 "e2b3d41b870de1f75bffcdff58ec121c19d0024258ddd800e2566554bc60d380"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
