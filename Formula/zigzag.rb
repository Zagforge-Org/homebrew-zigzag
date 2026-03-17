class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.0/zigzag-aarch64-macos.tar.gz"
      sha256 "64fb0f4222b3a11a0480f74f36a8b06e5506e5825a1f85c8301480792be253c8"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.0/zigzag-x86_64-macos.tar.gz"
      sha256 "bfee9b84bc8de7c81d6f2dc9d214d31ec74e50f16250d5d303d8598c494129d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.0/zigzag-aarch64-linux.tar.gz"
      sha256 "a3a837ec7e0c521182981cf1e837f2d5be55acfae97ab789f284757f78919b3a"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.0/zigzag-x86_64-linux.tar.gz"
      sha256 "e0cd6cdf568489da067ba4d1d4c210271a0e0e7d9193215fa999386bbc1c04f1"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
