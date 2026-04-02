class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.18.0/zigzag-aarch64-macos.tar.gz"
      sha256 "a8a97e1db26055a6ae869415cc0a42f2e16fe1e466276e3f2f63a7e8a2ed2c73"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.18.0/zigzag-x86_64-macos.tar.gz"
      sha256 "8579876f993739f228faf3dbcae4f7e104a18d2066c1903aea10e40e7099dbe9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.18.0/zigzag-aarch64-linux.tar.gz"
      sha256 "8cc0979f3e7b3e64fc04c524e6ba4ed997699543bd83a05541ec1738f7e59d7e"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.18.0/zigzag-x86_64-linux.tar.gz"
      sha256 "ea5646c372d0a0a9ee7e7b0226b5697d15f02572952b4999a0b944e3822b9eb7"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
