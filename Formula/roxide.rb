class Roxide < Formula
  desc "Manage your git repositories."
  homepage "https://github.com/fioncat/roxide"
  url "https://github.com/fioncat/roxide/archive/refs/tags/v0.17.1.tar.gz"
  sha256 "8ddaf0da07320d7973b7e9499c654d153d6b61f84bad090108b6999a14799737"
  license "MIT"
  head "https://github.com/fioncat/roxide.git", branch: "main"

  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "pkg-config" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/roxide", "--version"
  end
end
