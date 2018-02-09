class Crelease < Formula
  desc "CRelease for managing versioning and tagging."
  version "0.3.4"
  homepage "https://github.com/elorest/crelease"
  url "https://github.com/elorest/CRelease/archive/v#{version}.tar.gz"
  sha256 "a6fecf1aeb602e729c42ac247a61eaff9ab797b7a70676cac3b3ff939c1f8508"
  depends_on "crystal-lang"

  def install
    system "shards install && make build"
    bin.install "bin/crelease"
  end
end
