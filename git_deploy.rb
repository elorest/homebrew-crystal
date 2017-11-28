class GitDeploy < Formula
  desc "Automated setup for Heroku like git deploy."
  version "0.1.2"
  homepage "https://github.com/elorest/cry"
  url "https://github.com/elorest/git_deploy/archive/v#{version}.tar.gz"
  sha256 "6976b5aa082a2b630f03219953f53db5c0d347d387b7fdb330a0a29d24653ba4"
  depends_on "crystal-lang"

  def install
    system "make build"
    bin.install "bin/git_deploy"
  end
end
