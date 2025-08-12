class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/archive/refs/tags/v0.18.3.tar.gz"
  sha256 "0d4e8f203c0455fd95b78022169441b15d5458b1b35a1a0cf94b2deaf36ecfe4"
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
