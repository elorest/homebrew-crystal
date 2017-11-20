class Cry < Formula
  desc "Pry like eval for crystal."
  version "0.1.1"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/cry/archive/v#{version}.tar.gz"
  sha256 "f722da1fdbb60f384a03f820d1f23eac7ba29b24ee53eb61bc5a26f41f3e8caf"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/cry"
  end
end
