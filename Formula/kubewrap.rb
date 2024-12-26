class Kubewrap < Formula
  desc "Wrap kubectl command, offers some useful tools"
  homepage "https://github.com/fioncat/kubewrap"
  url "https://github.com/fioncat/kubewrap/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "todo"
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
