class GithubPrCheck < Formula
  desc "Terminal dashboard showing live CI status of your open GitHub pull requests"
  homepage "https://github.com/z-x/github-pr-check"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/z-x/github-pr-check/releases/download/v0.1.2/github-pr-check-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "b4de8a6922bd9dbe4325928a25fafb517fa85742ed518bae69a9d7d152484c92"
    end
    on_intel do
      url "https://github.com/z-x/github-pr-check/releases/download/v0.1.2/github-pr-check-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "67569ba398d3f61b6b3f5e6c1bca24bbbc5eddac10e8e166acf0aab64699868a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/z-x/github-pr-check/releases/download/v0.1.2/github-pr-check-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be36134fed9f90f9620592225a57352bcb88418ff464e8d354b8bc631361895e"
    end
    on_intel do
      url "https://github.com/z-x/github-pr-check/releases/download/v0.1.2/github-pr-check-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c19839bd4ff89a6c7d9a255edd7bea6a647f062d534e7b4f5b7d20eda574b6f"
    end
  end

  def install
    bin.install "github-pr-check"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github-pr-check --version")
  end
end
