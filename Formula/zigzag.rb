class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.18.0/zigzag-aarch64-macos.tar.gz"
      sha256 "d70b0d637d4d0ac44e1bf5ce0192237b5567a2958852850fcb9597190a5f4747"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.18.0/zigzag-x86_64-macos.tar.gz"
      sha256 "742c47559395f0316e7870c7e4e7e2a2bb31cb3a622b5fec35d85865aeda0d25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.18.0/zigzag-aarch64-linux.tar.gz"
      sha256 "6db9e7172f813bf3aff18d5239ca18002422dda1ae176eb34ada59e93cd68ffe"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.18.0/zigzag-x86_64-linux.tar.gz"
      sha256 "1da20be64f3a04e40bf66749fbb412185bc9bb492698bf7564adc4404c6522d3"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
