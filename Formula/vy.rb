class Vy < Formula
  desc "TypeScript framework for full-stack edge apps"
  homepage "https://vy.dev"
  version "0.0.0-dev.c29b5f8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.c29b5f8/vy-aarch64-macos.tar.gz"
      sha256 "fee1ed533d5e99978e2c0367bd96ad35b356f4e70dc668643124b6aa5608c5dc"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.c29b5f8/vy-x86_64-macos.tar.gz"
      sha256 "bed2ce2e8f5e4d3ce6bed7a804e3277dd68e5ea1c22ca486a6a70936e05244b2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.c29b5f8/vy-aarch64-linux.tar.gz"
      sha256 "8ed6c6c4f90947738ad7a802435aaaf3cc4706e3bb2da5b95cd467df021d49e2"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.c29b5f8/vy-x86_64-linux.tar.gz"
      sha256 "84854ed6d5ef99723c8f542ae9bfd8e987ddbebb029b12a8db73cad17e50dc2f"
    end
  end

  def install
    bin.install "vy"
  end

  test do
    system "#{bin}/vy", "--version"
  end
end
