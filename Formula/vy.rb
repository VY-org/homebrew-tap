class Vy < Formula
  desc "TypeScript framework for full-stack edge apps"
  homepage "https://vy.dev"
  version "0.0.0-dev.4db251a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.4db251a/vy-aarch64-macos.tar.gz"
      sha256 "b810c20396a4d43746118dc78c1f6c7721ba8838d36ef5d0cd6e9fd47b6e8af0"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.4db251a/vy-x86_64-macos.tar.gz"
      sha256 "0797484a56ca8e1efa252058df386f18cbb6830fff6479a886af1db9b28489e5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.vy.dev/cli/v0.0.0-dev.4db251a/vy-aarch64-linux.tar.gz"
      sha256 "53c86143eb634c84ff61fcb310e8e351a841f459407567b6bf797445de4c4e10"
    end
    on_intel do
      url "https://releases.vy.dev/cli/v0.0.0-dev.4db251a/vy-x86_64-linux.tar.gz"
      sha256 "811cb8f7ee88143d1203024cffd09905e299bf75e56e05348c95b1ee72cda176"
    end
  end

  def install
    bin.install "vy"
  end

  test do
    system "#{bin}/vy", "--version"
  end
end
