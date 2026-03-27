class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "MIT"
  version "2.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.3/cflmd-macos-arm64.tar.gz"
      sha256 "049ec925670fff24097cd20730dec9144590de9449805616595d8a27b5b6ca52"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.3/cflmd-macos-x64.tar.gz"
      sha256 "83b8a17f86c02481bd9c6467c4cd00a4c4ba1661441f8a14460d56633be50e0c"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v2.3.3/cflmd-linux-x64.tar.gz"
    sha256 "354b328497779b9c9770e133d428baf3fd02408aba7580da3388884372afb290"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
