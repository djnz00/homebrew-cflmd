class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v2.0.0/cflmd-macos-arm64.tar.gz"
      sha256 "0513b192ebae13a6de0edf9c94b430e29409bd8c049c1d5e7546d567a649f9e6"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v2.0.0/cflmd-macos-x64.tar.gz"
      sha256 "47c729319f421f5392781e0ffa420cadfdbb010caeaa76e321938eb460c51baf"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v2.0.0/cflmd-linux-x64.tar.gz"
    sha256 "ea014921ba51fbeef610a661fd5340db6cf679fa595432d9e11a8183539fd232"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
