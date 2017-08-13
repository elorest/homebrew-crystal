class Crelease < Formula
  desc "CRelease for managing versioning and tagging."
  version "0.2.0"
  homepage "https://github.com/elorest/crelease"
  url "https://github.com/elorest/CRelease/archive/v#{version}.tar.gz"
  sha256 "bfd543033dcd1c2021a3fdb7a329b99f44237224cd48b6072a2672305c920f4e"
  depends_on "crystal-lang"

  def install
    system "shards install && make build"
    bin.install "bin/crelease"
  end
end
