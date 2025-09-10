class Csync < Formula
  desc "Share your clipboard between different devices"
  homepage "https://github.com/fioncat/csync"
  url "https://github.com/fioncat/csync/releases/download/v0.8.3/csync-aarch64-apple-darwin.tar.gz"
  sha256 "2c13000116454760dfaaa4f72c322aa7a4405beeae65e43fd4b44a5aad0ab36d"
  license "MIT"
  head "https://github.com/fioncat/csync.git", branch: "main"

  def install
    bin.install "csyncd"
    bin.install "csynctl"
    bin.install "csync-server"
  end

  test do
    system "#{bin}/csyncd", "--version"
    system "#{bin}/csynctl", "--version"
    system "#{bin}/csync-server", "--version"
  end
end
