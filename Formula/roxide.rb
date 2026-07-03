class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.21.0/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "a528d837cf70d028be939d082b6389600d8df4ef168ba5c51e120b7729929984"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
