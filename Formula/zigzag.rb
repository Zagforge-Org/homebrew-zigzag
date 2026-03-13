class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.2/zigzag-aarch64-macos.tar.gz"
      sha256 "4065223607961e198a133751cc6ed7cdbcd94322f7206313a8c88b1668353848"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.2/zigzag-x86_64-macos.tar.gz"
      sha256 "98c1e9ee5819e3136ece6dff5614d563910b217ee4037fa129748f73a5930dd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.2/zigzag-aarch64-linux.tar.gz"
      sha256 "b92c0f7e3000739ca0a613405c623f8657e727502299286fd316322d5e708482"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.2/zigzag-x86_64-linux.tar.gz"
      sha256 "c9b1eee99a435bce4ca7e4c4bd1e8b1d789f806f939c0a5aa93397cd45fc3aa8"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
