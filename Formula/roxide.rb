class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.20.6/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "2fd6bf92460087681843c26cae3ab7c359aac8d95ea1f01b30b4d3478779604b"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
