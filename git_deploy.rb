class GitDeploy < Formula
  desc "Automated setup for Heroku like git deploy."
  version "0.1.1"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/git_deploy/archive/v#{version}.tar.gz"
  sha256 "2eae8e5bebf318c84193a33f9d33a58f5bee11cddba3cb77a3f8d58100329c0e"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/git_deploy"
  end
end
