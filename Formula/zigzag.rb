class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.17.0/zigzag-aarch64-macos.tar.gz"
      sha256 "84025d27649b5e1370cdf1ba97f60d63bc1ab6a49732013d509977fa192aacd4"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.17.0/zigzag-x86_64-macos.tar.gz"
      sha256 "e14a42c7ea35f31aac7288e3f68abf86ca8b8ec959b65d859c4300b313c59844"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.17.0/zigzag-aarch64-linux.tar.gz"
      sha256 "59af80d0a1764df8305e231712ab9c17be14f30d5b3bbdd0e87f51e2f56927c2"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.17.0/zigzag-x86_64-linux.tar.gz"
      sha256 "18fe4299d693448188613726120cc290c97c1ba813856e712dbc5d9aa37ccc90"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
