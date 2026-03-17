class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "2.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.1/cflmd-macos-arm64.tar.gz"
      sha256 "52fa0fc6b8cf6259f5623e9080197a83845f21c3aadebfbf756b085b65bc814b"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.1/cflmd-macos-x64.tar.gz"
      sha256 "31a032c39a79d287984288d8339bc4e76e23fd5fa23a8c2806e8cf0997309fed"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v2.3.1/cflmd-linux-x64.tar.gz"
    sha256 "28e17130fb7b6bdd3dd102bc03bde3f257c07bda0565c5536484f0a5d1984300"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
