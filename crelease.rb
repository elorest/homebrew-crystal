class Crelease < Formula
  desc "CRelease for managing versioning and tagging."
  version "0.1.2"
  homepage "https://github.com/elorest/crelease"
  url "https://github.com/elorest/CRelease/archive/v#{version}.tar.gz"
  sha256 "8cc2cacd7d1c78386438037bcb5fa4542244a876269ec88deb5875c8de8c236e"
  depends_on "crystal-lang"

  def install
    system "shards install && make"
    bin.install "bin/crelease"
  end
end
