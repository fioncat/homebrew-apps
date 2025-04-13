class Filewarden < Formula
  desc "Password-based symmetric encryption of files"
  homepage "https://github.com/fioncat/filewarden"
  url "https://github.com/fioncat/filewarden/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "de903de5e8fa3b6e687c4618e1727b1712f51f03966f4a9d069f420d6c7d2123"
  license "MIT"
  head "https://github.com/fioncat/filewarden.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--locked"
    bin.install "target/release/fwd"
  end

  test do
    system "#{bin}/fwd", "-V"
  end
end
