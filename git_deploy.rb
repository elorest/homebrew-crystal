class GitDeploy < Formula
  desc "Automated setup for Heroku like git deploy."
  version "0.2.0"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/git_deploy/archive/v#{version}.tar.gz"
  sha256 "bd34c7d07e15da254d1dda6f38a91ace274623714e4f98e70801f107754c4fd0"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/git_deploy"
  end
end
