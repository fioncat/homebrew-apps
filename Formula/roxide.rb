class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.20.5/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "dd0ce177f89dda830e5f036c33f6ba719ec73eae7ca44bf8f9b2f02d7120ceb1"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
