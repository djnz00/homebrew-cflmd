class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v0.2.0/cflmd-macos-arm64.tar.gz"
      sha256 "e78e620a007155abedf1ea96b929a203974730b21c3de51a5dcfb69e0743f85f"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v0.2.0/cflmd-macos-x64.tar.gz"
      sha256 "4de30fe1bcd4817f8842551c5514e1567375982a2fa3a55365f3f4c0187cba3e"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v0.2.0/cflmd-linux-x64.tar.gz"
    sha256 "b59a6d081ac3d3803271f0faa49d23674a7205973d3b6de85c8b0361f8d458da"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
