class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.16.0/zigzag-aarch64-macos.tar.gz"
      sha256 "44c75b972b864a71515b6c0b9dbb588b20afd7654da21d71967f27e3d3d98975"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.16.0/zigzag-x86_64-macos.tar.gz"
      sha256 "7fd1550ffe6c60a296d34f39a08a6d6acffbf6588843eab2ac16519c6a5dbaad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.16.0/zigzag-aarch64-linux.tar.gz"
      sha256 "6b176a967785da7267aed5ca18820d985430e9e230095fac347066f0f6483559"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.16.0/zigzag-x86_64-linux.tar.gz"
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
