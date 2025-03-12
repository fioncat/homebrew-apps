class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "d8be049020858502595f187c66488d092ebad85d3bee1dfd5b11aba16a8f359d"
  license "MIT"
  head "https://github.com/fioncat/csync.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--locked"
    bin.install "target/release/csyncd"
    bin.install "target/release/csynctl"
    bin.install "target/release/csync-server"
  end

  test do
    system "#{bin}/csyncd", "--version"
    system "#{bin}/csynctl", "--version"
    system "#{bin}/csync-server", "--version"
  end
end
