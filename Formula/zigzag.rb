class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-aarch64-macos.tar.gz"
      sha256 "f3e44e666143c5ee24dc6ccc87d97d72edcddc1808b2c4d6159e39a6f3989053"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-x86_64-macos.tar.gz"
      sha256 "02148ebdc96e3c6cb9d8bdc5b3d869fe25badaa54f527271edea9f837e70c7a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-aarch64-linux.tar.gz"
      sha256 "7bbf1e8a4f69545331f31afd40866793e61cab6dc9c79256f1b70c72567ded86"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-x86_64-linux.tar.gz"
      sha256 "1ac2b9769a29c4ad674a05f783e382f986ef18080b79dc8ee5f1e3ee9ad78a2c"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
