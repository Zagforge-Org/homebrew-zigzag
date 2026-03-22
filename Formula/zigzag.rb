class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.16.0/zigzag-aarch64-macos.tar.gz"
      sha256 "081c68a9ce4a38c10b5c754902a92e11a10eb40535ad93d5138cfd6320b5c151"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.16.0/zigzag-x86_64-macos.tar.gz"
      sha256 "a5c216736eb098131ab4b96e420a005d086c61313330c13024bdc573134afa19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.16.0/zigzag-aarch64-linux.tar.gz"
      sha256 "ce201f4e55fc6605994f5c9b7b6242baa2b4b473a5dadfe8b3f69d869009ad82"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.16.0/zigzag-x86_64-linux.tar.gz"
      sha256 "101472464e39c278e41263217d2f45e811d6f9e7f2a5cb24d1e272334e09a679"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
