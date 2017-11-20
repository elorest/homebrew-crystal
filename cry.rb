class Cry < Formula
  desc "Pry like eval for crystal."
  version "0.1.1"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/cry/archive/v#{version}.tar.gz"
  sha256 "bfd543033dcd1c2021a3fdb7a329b99f44237224cd48b6072a2672305c920f4e"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/cry"
  end
end
