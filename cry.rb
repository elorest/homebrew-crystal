class Cry < Formula
  desc "Pry like eval for crystal."
  version "0.2.0"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/cry/archive/v#{version}.tar.gz"
  sha256 "7e59b4ea3b9fe34d3de08cc1c762ea8e38c7b982bf2cc710c47e18e26a0d058d"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/cry"
  end
end
