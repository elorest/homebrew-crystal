class Cry < Formula
  desc "Pry like eval for crystal."
  version "0.5.0"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/cry/archive/v#{version}.tar.gz"
  sha256 "350aa269f96f7bbc4a2cdd9f2a8fef72047fef23d2b7ac0d82a2db8ba3788e0a"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/cry"
  end
end
