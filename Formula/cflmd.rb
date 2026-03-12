class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v0.3.0/cflmd-macos-arm64.tar.gz"
      sha256 "4fdedc0fb31256166d152a8e8f19a7587226da684b9ef732be95d02d60d154d5"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v0.3.0/cflmd-macos-x64.tar.gz"
      sha256 "1248ca38bc08bf03e8ec9ef86779dfa8d1d2bab67163489ab7fcce195cd0fdeb"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v0.3.0/cflmd-linux-x64.tar.gz"
    sha256 "74185ed65c5909dbc778afc3a4464a571c8e9fe1af8d49d7a911a4d5dde94373"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
