class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v0.1.2/cflmd-macos-arm64.tar.gz"
      sha256 "d2d90cd05102218130a8aca40b86a748515d48f61fbf7854633dc5b0de44f96b"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v0.1.2/cflmd-macos-x64.tar.gz"
      sha256 "9404798ccbdcc3d50ea247496a0899688fb8ab44ab345309b3e4b6ea4da13ae4"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v0.1.2/cflmd-linux-x64.tar.gz"
    sha256 "cad5334330b04bb8787b9fea2030987e72fd8aee6d6eeb34ae3168109d80ad2c"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
