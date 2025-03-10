class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "8d789ac13b4a4883286e038aad25654f27f3ac52335e27ec635f71becef66368"
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
