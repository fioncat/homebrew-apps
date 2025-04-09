class Otree < Formula
  desc "A command line tool to view objects (JSON/YAML/TOML) in TUI tree widget."
  homepage "https://github.com/fioncat/otree"
  url "https://github.com/fioncat/otree/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "d1bfb69c22b667a3102a33e879175cb2a883456123fafdb5cf2fdbbf23fbab10"
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
