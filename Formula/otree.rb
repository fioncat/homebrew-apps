class Otree < Formula
  desc "A command line tool to view objects (JSON/YAML/TOML) in TUI tree widget."
  homepage "https://github.com/fioncat/otree"
  url "https://github.com/fioncat/otree/releases/download/v0.7.1/otree-aarch64-apple-darwin.tar.gz"
  sha256 "f9047e35166dafbdda24c5acb95fda9410ac740a7feb83ca432d0d4624d7189c"
  license "MIT"
  head "https://github.com/fioncat/otree.git", branch: "main"

  def install
    bin.install "otree"
  end

  test do
    system "#{bin}/otree", "--version"
  end
end
