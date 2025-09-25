class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.20.4/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "d697a1271d8093b871ca6bb1d5e302b3ee8014fef797df0005fc99f3e08549b9"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
