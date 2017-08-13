class Crelease < Formula
  desc "CRelease for managing versioning and tagging."
  version "0.1.3"
  homepage "https://github.com/elorest/crelease"
  url "https://github.com/elorest/CRelease/archive/v#{version}.tar.gz"
  sha256 "87eecd3bfb1e6bf0441695fc87c0d5ae7e4de0560b48af7416fe89ab33b3c68d"
  depends_on "crystal-lang"

  def install
    system "shards install && make"
    bin.install "bin/crelease"
  end
end
