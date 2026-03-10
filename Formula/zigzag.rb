class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-aarch64-macos.tar.gz"
      sha256 "7afc432fb15151eefd542cb44728147f6ea1b47ccf0e90a5ee1bac3d9a65fc1b"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-x86_64-macos.tar.gz"
      sha256 "336cd7d3f7d0353d2b6f73ea5ca797cb35445d77dd9f183bb13d343cadd9ca5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-aarch64-linux.tar.gz"
      sha256 "ed48ac21fd5bb30db9d59f6ce46af841d73849b311b860f7b506c48a9956b2a6"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-x86_64-linux.tar.gz"
      sha256 "9ebf06f7b14e0a3210fc77b46f95ebc563c17367d4b8a538da6d45a65e46fc91"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
