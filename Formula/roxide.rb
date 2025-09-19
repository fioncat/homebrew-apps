class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.20.1/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "74d803e5251fe4a894e6549537d3cbb6fb9edb199e2746a4af1c0d324e917345"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
