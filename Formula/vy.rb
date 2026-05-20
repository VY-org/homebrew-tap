class Vy < Formula
  desc "TypeScript framework for full-stack edge apps"
  homepage "https://vy.dev"
  version "0.0.0-dev.c72afe4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.c72afe4/vy-aarch64-macos.tar.gz"
      sha256 "5bf87ee2014365cf969bf5531dca172d1f553f7acf869529e599801a0f5605f2"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.c72afe4/vy-x86_64-macos.tar.gz"
      sha256 "f65305c18956ee9e51f4522a9e01f738f66b0277f90872e847c6b4acc89190bf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.c72afe4/vy-aarch64-linux.tar.gz"
      sha256 "712147b3f39bbe86b2964fd37e5e333985427e9fa40135c78cb832bf23aca114"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.c72afe4/vy-x86_64-linux.tar.gz"
      sha256 "8329208fca7d650e04277b46dfa128f28b5ecf45042f789dedb0544cf4d18960"
    end
  end

  def install
    bin.install "vy"
  end

  test do
    system "#{bin}/vy", "--version"
  end
end
