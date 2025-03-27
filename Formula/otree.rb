class Otree < Formula
  desc "A command line tool to view objects (JSON/YAML/TOML) in TUI tree widget."
  homepage "https://github.com/fioncat/otree"
  url "https://github.com/fioncat/otree/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "f71064cac1c7fc1047a119bdd2b630eac67008546d13b51b1ace1ab9b0314e02"
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
