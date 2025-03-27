class Filewarden < Formula
  desc "Password-based symmetric encryption of files"
  homepage "https://github.com/fioncat/filewarden"
  url "https://github.com/fioncat/filewarden/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
