class Otree < Formula
  desc "A command line tool to view objects (JSON/YAML/TOML) in TUI tree widget."
  homepage "https://github.com/fioncat/otree"
  url "https://github.com/fioncat/otree/releases/download/v0.6.1/otree-aarch64-apple-darwin.tar.gz"
  sha256 "c645da3b2873eb175d7e44d540fa9f8bb76ea3e775111472cc9caed613f91f24"
  license "MIT"
  head "https://github.com/fioncat/otree.git", branch: "main"

  def install
    bin.install "otree"
  end

  test do
    system "#{bin}/otree", "--version"
  end
end
