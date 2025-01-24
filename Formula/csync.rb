class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "968ba302b4e32310bbb4d14201ff80a8499c71bf3ee01f57d6e99ba6c13e56c4"
  license "MIT"
  head "https://github.com/fioncat/csync.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/csync", "--version"
  end
end
