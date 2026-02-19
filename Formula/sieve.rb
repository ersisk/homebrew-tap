class Sieve < Formula
  desc "Blazing-fast, multi-platform JSON log viewer for your terminal"
  homepage "https://github.com/ersisk/sieve"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ersisk/sieve/releases/download/v1.0.0/sieve_1.0.0_darwin_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/ersisk/sieve/releases/download/v1.0.0/sieve_1.0.0_darwin_arm64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ersisk/sieve/releases/download/v1.0.0/sieve_1.0.0_linux_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/ersisk/sieve/releases/download/v1.0.0/sieve_1.0.0_linux_arm64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "sieve"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sieve --version")
  end
end
