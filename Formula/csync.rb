class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/archive/refs/tags/v0.6.2.tar.gz"
  sha256 "c5eddf52cc9f454b0a797545a1ed80ef08c8cbda1c8c32c6512d9aa3387f76c2"
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
