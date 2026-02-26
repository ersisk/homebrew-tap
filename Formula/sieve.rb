class Sieve < Formula
  desc "Blazing-fast, multi-platform JSON log viewer for your terminal"
  homepage "https://github.com/ersisk/sieve"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ersisk/sieve/releases/download/v1.0.3/sieve_1.0.3_darwin_amd64.tar.gz"
      sha256 "3378a491e208c2ca4135bcbdf27db8eb540841f60209ebad4ed6f3817cf0889d2f801ae1e1d6fc45adbcde198e4ec008076f8602c0f1dfaab9ac76e7aa071416"
    end
    on_arm do
      url "https://github.com/ersisk/sieve/releases/download/v1.0.3/sieve_1.0.3_darwin_arm64.tar.gz"
      sha256 "eed1c5673d683f9593478e3cba5b670c9b76ffd7a4879d8e4e413fe79c086310956f142bb96b47e1b80e426a4e203d15cccddc6d60bc341db317872fcea1d518"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ersisk/sieve/releases/download/v1.0.3/sieve_1.0.3_linux_amd64.tar.gz"
      sha256 "7cc3c26c02e19f0bd107036d8f3627f7d132bae7ba3cc9cba8885ad8de01497f685469e9406f69a0006be2b2b4dcf5e6ab309d82c318f669c0eeb2703bf33841"
    end
    on_arm do
      url "https://github.com/ersisk/sieve/releases/download/v1.0.3/sieve_1.0.3_linux_arm64.tar.gz"
      sha256 "74a37b55519988f420b8cc7c1bf21995840356df8da861ac774773f72890a1fa9cf80c7cdeeaf70bffe84a88217ac250e29aa9f80ad2df4471e29c6a86494e19"
    end
  end

  def install
    bin.install "sieve"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/sieve --version")
  end
end
