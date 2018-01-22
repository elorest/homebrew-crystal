class Cry < Formula
  desc "Pry like eval for crystal."
  version "0.3.0"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/cry/archive/v#{version}.tar.gz"
  sha256 "60ecb9ed0d48dd1e0b062246fa7b28cf0227cc558765d6094b7a6400c1e3e673"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/cry"
  end
end
