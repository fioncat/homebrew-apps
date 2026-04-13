class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.20.7/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "01f585f62e277b6368a330e0bd2faa13b6496696d9476047dfe29be4db8bf12d"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
