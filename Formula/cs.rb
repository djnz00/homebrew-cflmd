class Cs < Formula
  desc "Interactive CrowdStrike Falcon API CLI driven by openapi.yaml"
  homepage "https://github.com/djnz00/cs"
  license "ISC"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/djnz00/cs/releases/download/v1.0.1/cs-macos-arm64.tar.gz"
      sha256 "6d6f407e54e53dad7a9c230596e9b05f75b5bf40c35f404880b60f6f5cc15363"
    else
      url "https://github.com/djnz00/cs/releases/download/v1.0.1/cs-macos-x64.tar.gz"
      sha256 "446c4b0f62cc38e126a9032d187901aaaf29cfecb13bd0c2ddfe2edd30a42030"
    end
  end

  on_linux do
    url "https://github.com/djnz00/cs/releases/download/v1.0.1/cs-linux-x64.tar.gz"
    sha256 "9c07d06a6cc550bdeb8cd42d576424da35c8cf5faf7c4573c8abac5a4b7eabbe"
  end

  def install
    bin.install "cs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/cs --help")
  end
end
