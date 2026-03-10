class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.0/zigzag-aarch64-macos.tar.gz"
      sha256 "29962524abdca33915f336cdc982039709ac54b59919d5786da98f76eec03dcd"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.0/zigzag-x86_64-macos.tar.gz"
      sha256 "b41dbbc48afbe5b53bea6bbe679d23e1b08b0878205b6535a2ecf6e1c482eae8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.0/zigzag-aarch64-linux.tar.gz"
      sha256 "9c4356d74e2b05130d4ec5d2cca99ba199a0b0d613beb9413b9de8cebb9afe13"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.0/zigzag-x86_64-linux.tar.gz"
      sha256 "c7b27d48e151399319f7b66405724de00630b1032cf404a0df336e9e9a59e8a3"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
