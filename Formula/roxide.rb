class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.19.0/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "77220db3f148f0611634e686ed71265181a52cfccdfc09eb7524b83a6151d548"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
