class Crelease < Formula
  desc "CRelease for managing versioning and tagging."
  homepage "https://github.com/elorest/crelease"
  url "https://github.com/elorest/CRelease/archive/master.tar.gz"
  #sha256 "53cd5a3961658999523ab4045e30512585c61a3a2db0d0015f5414de7d2ffac2"

  depends_on "crystal-lang"
  depends_on "openssl"

  def install
    cd buildpath do
      system "shards", "install"
      system "crystal", "build", "-o", "crelease", "src/crelease.cr"
      bin.install "crelease"
    end
  end

  test do
    system "#{bin}/crelease", "--version"
  end
end
