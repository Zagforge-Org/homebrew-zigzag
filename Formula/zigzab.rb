class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "ZIGZAG_VERSION"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/vZIGZAG_VERSION/zigzag-aarch64-macos.tar.gz"
      sha256 "AARCH64_SHA256"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/vZIGZAG_VERSION/zigzag-x86_64-macos.tar.gz"
      sha256 "X86_64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/vZIGZAG_VERSION/zigzag-aarch64-linux.tar.gz"
      sha256 "AARCH64_LINUX_SHA256"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/vZIGZAG_VERSION/zigzag-x86_64-linux.tar.gz"
      sha256 "X86_64_LINUX_SHA256"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
