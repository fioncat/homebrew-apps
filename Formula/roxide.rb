class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/releases/download/v0.20.3/roxide-aarch64-apple-darwin.tar.gz"
  sha256 "581f6c7fc02ab14689f9a272ee00faff0a3ba30e4e55bbd2f27a97519253cb3d"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  def install
    bin.install "roxide"
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
