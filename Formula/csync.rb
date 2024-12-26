class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "3741aecc61615c2cc23570b52ac6f57abb810bb0fe9e72653fb671404b9323c3"
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
