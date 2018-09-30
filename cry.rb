class Cry < Formula
  desc "Pry like eval for crystal."
  version "0.4.0"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/cry/archive/v#{version}.tar.gz"
  sha256 "90879faaf5b7cf311a422ba1f5568ad0bd6ba1a019632bbbfe5f67e293e8a265"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/cry"
  end
end
