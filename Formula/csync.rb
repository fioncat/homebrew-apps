class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "4ad03f4070b6732db9330c9be2e5dff402322b3422ea7c627146511ca771c014"
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
