class Crelease < Formula
  desc "CRelease for managing versioning and tagging."
  homepage "https://github.com/elorest/crelease"
  url "https://github.com/elorest/CRelease/archive/master.tar.gz"
  sha256 "2b204f5c2b0cf3b3fcbd0555b0ef0fcfc74785fd3cb19c19b16591c4eb4d6a32"

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
