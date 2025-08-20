class Otree < Formula
  desc "A command line tool to view objects (JSON/YAML/TOML) in TUI tree widget."
  homepage "https://github.com/fioncat/otree"
  url "https://github.com/fioncat/otree/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "e0fc252aef6ba27fad0243533fb0b287ba096575fca540d8a389bd1dba79e695"
  license "MIT"
  head "https://github.com/fioncat/otree.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otree", "--version"
  end
end
