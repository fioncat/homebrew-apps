class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/archive/refs/tags/v0.18.2.tar.gz"
  sha256 "c29120edc3c8356e9cb4f652a17c5e2c6b60ebb249fd38edf3585fdf32ccab65"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "bin/roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
