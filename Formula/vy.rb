class Vy < Formula
  desc "TypeScript framework for full-stack edge apps"
  homepage "https://vy.dev"
  version "0.0.0-dev.d33b59a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.d33b59a/vy-aarch64-macos.tar.gz"
      sha256 "48715d648c554b170b4811e46d2022fdc16dc76949717482074c91506fccb54c"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.d33b59a/vy-x86_64-macos.tar.gz"
      sha256 "36b1ac8471a0a0632db32055465eaf89098d721ba185c6b7e6ce2cbf2c90d674"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.d33b59a/vy-aarch64-linux.tar.gz"
      sha256 "5efa3021bdab76662094526d7ca045d26231c5fa1efe770d0caa2de3e79a91af"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.d33b59a/vy-x86_64-linux.tar.gz"
      sha256 "0b84d046415503f17aea79c52a05dd9bf8a131f235f9812eca81677d290d5f64"
    end
  end

  def install
    bin.install "vy"
  end

  test do
    system "#{bin}/vy", "--version"
  end
end
