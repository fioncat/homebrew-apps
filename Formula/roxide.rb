class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/archive/refs/tags/v0.18.1.tar.gz"
  sha256 "0206d65917df51b8710130d2c1a6ad95dbe0d9b39222254e3edeae37d90e6921"
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
