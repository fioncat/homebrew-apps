class Otree < Formula
  desc "A command line tool to view objects (JSON/YAML/TOML) in TUI tree widget."
  homepage "https://github.com/fioncat/otree"
  url "https://github.com/fioncat/otree/releases/download/v0.6.2/otree-aarch64-apple-darwin.tar.gz"
  sha256 "a7066feda0ed8ecbaa5f6f9ef81ef14c58053eeda2e1b5d29d8444698af00757"
  license "MIT"
  head "https://github.com/fioncat/otree.git", branch: "main"

  def install
    bin.install "otree"
  end

  test do
    system "#{bin}/otree", "--version"
  end
end
