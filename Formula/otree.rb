class Otree < Formula
  desc "A command line tool to view objects (JSON/YAML/TOML) in TUI tree widget."
  homepage "https://github.com/fioncat/otree"
  url "https://github.com/fioncat/otree/releases/download/v0.6.3/otree-aarch64-apple-darwin.tar.gz"
  sha256 "4a184fcff0aa4a877484cef4708bd303eb9936c664929d2afccf0bedfcdeed49"
  license "MIT"
  head "https://github.com/fioncat/otree.git", branch: "main"

  def install
    bin.install "otree"
  end

  test do
    system "#{bin}/otree", "--version"
  end
end
