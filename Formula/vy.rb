class Vy < Formula
  desc "TypeScript framework for full-stack edge apps"
  homepage "https://vy.dev"
  version "0.0.0-dev.5ba7f96"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.vy.dev/cli/v#{version}/vy-aarch64-macos.tar.gz"
      sha256 "cd1aafd5ebbe3a37c971370331955142580db9683cd096b729d70ce0c68b90c5"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v#{version}/vy-x86_64-macos.tar.gz"
      sha256 "0ec290213642f90505c8bf81c12251395dbf01c1780e979841cec0de6d165b2f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.vy.dev/cli/v#{version}/vy-aarch64-linux.tar.gz"
      sha256 "32a64766231f4e48930c0d996715d5ae280723998ff4f22be7393173625cd024"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v#{version}/vy-x86_64-linux.tar.gz"
      sha256 "212d575f7ffe03b7e9395b19ad7000d1302893d02c76ef65bba6e10a6378ddf8"
    end
  end

  def install
    bin.install "vy"
  end

  test do
    system "#{bin}/vy", "--version"
  end
end
