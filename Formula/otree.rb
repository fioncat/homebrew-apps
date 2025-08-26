class Otree < Formula
  desc "A command line tool to view objects (JSON/YAML/TOML) in TUI tree widget."
  homepage "https://github.com/fioncat/otree"
  url "https://github.com/fioncat/otree/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "1c95f78c1b432b4a62392c971bc28eda8bc6754ec53e0701de1c42417c058bdf"
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
