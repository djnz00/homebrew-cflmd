class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "MIT"
  version "2.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.2/cflmd-macos-arm64.tar.gz"
      sha256 "8687c7c538860b2a8e7236d8a07fb70181a25ff207011a7e9fe759489fd05962"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.2/cflmd-macos-x64.tar.gz"
      sha256 "993006dedbb00165bd58a8a1e82e5caecd7d60417457f1920d863a69e40d1c92"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v2.3.2/cflmd-linux-x64.tar.gz"
    sha256 "2b25ddd81abc2d2b5655978de9cc90fc35ce47f60b0614e15abd98eb36b463ef"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
