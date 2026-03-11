class Zigzag < Formula
  desc "High-performance tool for generating markdown reports of source code directories"
  homepage "https://github.com/LegationPro/zigzag"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-aarch64-macos.tar.gz"
      sha256 "957978f62cc2000626466171fd5101e31a2a7d47973b1689be3e34e6a6a8d59e"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-x86_64-macos.tar.gz"
      sha256 "21780c1d1c32669a4e3663fdded51be3f319113c31ab3bdad9e6935e423e4f2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-aarch64-linux.tar.gz"
      sha256 "a8e39e3ae056b76a795b942032925f889e89ff614556beeb6161e852935f582b"
    else
      url "https://github.com/LegationPro/zigzag/releases/download/v0.14.1/zigzag-x86_64-linux.tar.gz"
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
