class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v1.0.0/cflmd-macos-arm64.tar.gz"
      sha256 "3439b79e4d751275f4c98b3707717e8816098f506d546de550c9c17764db9bce"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v1.0.0/cflmd-macos-x64.tar.gz"
      sha256 "54662aaeff59a878d4d8d6cb6a81a8497fdbe8a48f47b5119641bd45ace9e34e"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v1.0.0/cflmd-linux-x64.tar.gz"
    sha256 "d21bb5838d97ab624bdbad0fb6839305a5ab29d1cdbacd917fa71833addf1df2"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
