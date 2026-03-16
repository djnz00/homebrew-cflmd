class Cflmd < Formula
  desc "CLI for working with Atlassian Confluence page content as Markdown"
  homepage "https://github.com/djnz00/cflmd"
  license "ISC"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.0/cflmd-macos-arm64.tar.gz"
      sha256 "8e602d88cfa64f62339d257df8e11041783d2481dcbc56ac75b9c458cf71ee01"
    else
      url "https://github.com/djnz00/cflmd/releases/download/v2.3.0/cflmd-macos-x64.tar.gz"
      sha256 "e55849f53cb04d6c94c76dce002747ad984c6b815805014b02e4bfa4339c05f6"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cflmd/releases/download/v2.3.0/cflmd-linux-x64.tar.gz"
    sha256 "963029abe335316474cd90d4c37007f380f4dc8e8e59641a6c8367c117f6b74f"
  end

  def install
    bin.install "cflmd"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cflmd --help")
  end
end
