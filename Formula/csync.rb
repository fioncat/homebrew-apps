class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "56ecd98be630c9100584005e180bf2ce739c6ac686bce4b1275e3c6050f23628"
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
