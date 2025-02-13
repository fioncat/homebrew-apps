class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "47c08583c6325548f0d51ead0670090e1b37c2814eb58e947aefaa2b4416b660"
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
