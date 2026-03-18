class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.1/zigzag-aarch64-macos.tar.gz"
      sha256 "01c6c6e4470636d16d5ab9dbc36459d271c2a9e514479597ab02648e738d6327"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.1/zigzag-x86_64-macos.tar.gz"
      sha256 "b7a95740632e85373da8e5f2526d6a076bf6034f479c8d1ca6c1a8c039db91ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.1/zigzag-aarch64-linux.tar.gz"
      sha256 "8943ef7f969af3352ce4d98614eb319ee47970a15dfa2a59e7ce1034941d1c25"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.1/zigzag-x86_64-linux.tar.gz"
      sha256 "bda602af8c875c3fda74c4c5974f3208d279e9f93d92264fd550b17af9843008"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
