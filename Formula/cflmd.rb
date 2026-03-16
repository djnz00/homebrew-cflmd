class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v2.2.0/cflmd-macos-arm64.tar.gz"
      sha256 "0ba0c03f82c8e3f7cc257157f41c3147e039f0d0f5a6df34b8209e23e4d58f0e"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v2.2.0/cflmd-macos-x64.tar.gz"
      sha256 "2846c466fc857bec97522985298ecde1538cec60922994064ca026c07f5a09cb"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v2.2.0/cflmd-linux-x64.tar.gz"
    sha256 "330d318e9d4f79ae5aef8e88934b9ebc2a87ba9e915a29b3b6955d5d933b1ceb"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
