class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/archive/refs/tags/v0.18.0.tar.gz"
  sha256 "d912c545e1caf7305d2d93cf540dcd49dd04f87d883172458c9ce3b12c805936"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  depends_on "go" => :build

  def install
    system "make"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
