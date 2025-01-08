class PoetryPython < Formula
  desc "A shebang for installing poetry deps before running a python script"
  homepage "https://github.com/ysoftwareab/homebrew-tap"
  url "https://github.com/ysoftwareab/homebrew-tap/archive/refs/tags/poetry-python-1.7.tar.gz"
  sha256 "c9a396fb1f82807fd84ac2e35a543190b98eb9690eaa4c65061c6730af9496fa"
  license :public_domain
  head "https://github.com/ysoftwareab/homebrew-tap.git", branch: "master"

  def install
    bin.install "bin/poetry-python"
  end
end
