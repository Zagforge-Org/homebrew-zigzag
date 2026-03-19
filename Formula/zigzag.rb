class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.2/zigzag-aarch64-macos.tar.gz"
      sha256 "4a97b9d83f0fedcf61e6c03c73d6202be1287cf179a6f9cd1788198f3892b6ab"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.2/zigzag-x86_64-macos.tar.gz"
      sha256 "e4684f520589db6fd6ebf6566938dff55933720d5336602fd9174b182a00e8b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.2/zigzag-aarch64-linux.tar.gz"
      sha256 "dac47373dc02cd05045a2e6f3d111345b4e60ec8468f2c4f55da7e2c10eed10b"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.2/zigzag-x86_64-linux.tar.gz"
      sha256 "321824f23f796ffb0e78afbb54f2eb86482a4901d2e36fd13b85cb5e222cbba9"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
