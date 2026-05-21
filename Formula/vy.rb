class Vy < Formula
  desc "TypeScript framework for full-stack edge apps"
  homepage "https://vy.dev"
  version "0.0.0-dev.6b22087"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.6b22087/vy-aarch64-macos.tar.gz"
      sha256 "1fabdf4de30c62c881968cc74d234d1dd60288ffcca192ab66098b662154c2c2"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.6b22087/vy-x86_64-macos.tar.gz"
      sha256 "54c94b64726bbf85c25c5dde2930f5f2a21a550ac1b2209431d25ff8c3df40d3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.6b22087/vy-aarch64-linux.tar.gz"
      sha256 "00fd615947eecce24cbb14d90132a7faf455aa8269aad6fddc79c5ea31d06230"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.6b22087/vy-x86_64-linux.tar.gz"
      sha256 "415b5e1975debd5eeeecf74daba7508ce0d89b182fde2680e0b0565b5dbc1066"
    end
  end

  def install
    bin.install "vy"
  end

  test do
    system "#{bin}/vy", "--version"
  end
end
