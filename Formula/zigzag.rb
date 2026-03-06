class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.13.0/zigzag-aarch64-macos.tar.gz"
      sha256 "01823c30919da42bc1243f57cd00a0a078cb18ae7f94697eb54c5f6471d7b1c4"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.13.0/zigzag-x86_64-macos.tar.gz"
      sha256 "794dc33399312930362e8663d04bf32f60d7f51641504986b246f398bbb9c8d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.13.0/zigzag-aarch64-linux.tar.gz"
      sha256 "413a83fe5b6016b9e49bc2fee9ffa53f6f485c4ed80069968c889231ef0dba25"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.13.0/zigzag-x86_64-linux.tar.gz"
      sha256 "677185d1a37fe8b3478de99dca68e353e6ab091199162465106fb7eb0f948537"
    end
  end

  def install
    bin.install "zigzag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zigzag --version")
  end
end
