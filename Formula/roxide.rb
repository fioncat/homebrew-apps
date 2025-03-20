class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/archive/refs/tags/v0.17.4.tar.gz"
  sha256 "8ddaf0da07320d7973b7e9490c654d153d6b61f84bad090108b6999a14799737"
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
