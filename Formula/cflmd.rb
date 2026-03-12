class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v0.1.1/cflmd-macos-arm64.tar.gz"
      sha256 "8bcc899829752be2e180d8c12f07567b8818932e32d83b41ca26930f7811401b"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v0.1.1/cflmd-macos-x64.tar.gz"
      sha256 "a6ccd5e2e7efe3f488dec1fa237b9c90f76cea962364594338c8c4e6600320a3"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v0.1.1/cflmd-linux-x64.tar.gz"
    sha256 "f2de691110e32949d0e1fb3b73f074a4bb86427f26e1102bec311509d02b3b9a"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
