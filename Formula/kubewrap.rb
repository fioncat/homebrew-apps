class Kubewrap < Formula
  desc "Wrap kubectl command, offers some useful tools"
  homepage "https://github.com/fioncat/kubewrap"
  url "https://github.com/fioncat/kubewrap/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d248913c8d7354714b3cc31b4dcd16d74db5a30d64738315d32b0c0cc2a91ee6"
  license "MIT"
  head "https://github.com/fioncat/kubewrap.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kubewrap", "-v"
  end

  test do
    system "#{bin}/kubewrap", "--version"
  end
end
