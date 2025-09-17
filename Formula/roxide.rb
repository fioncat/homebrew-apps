class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.20.0/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "cd4471f534a70121ebd48f3d985dcbfb8a8c00558399ac36e72c34431985d89f"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
