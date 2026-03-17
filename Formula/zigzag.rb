class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.0/zigzag-aarch64-macos.tar.gz"
      sha256 "e2587a169426c661adb8c20b0c1ef3425d19b07235e9902b52c909a0e1d0a826"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.0/zigzag-x86_64-macos.tar.gz"
      sha256 "fae420ac8c88d9bef7b5adf31bf224ffe49a1db4f8e46eed7db46be4d523b5d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.0/zigzag-aarch64-linux.tar.gz"
      sha256 "d84519ed8fb447e13d513f313eb9d4804db2e0469ccc41df389bc929e96814f0"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.15.0/zigzag-x86_64-linux.tar.gz"
      sha256 "a9707f7047834ef795c41f19dba2e019c56dcf24b6c1ac835bf0e1dccf09a4e9"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
