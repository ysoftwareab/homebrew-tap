class PoetryPython < Formula
  desc "Shebang for installing poetry deps before running a python script"
  homepage "https://github.com/ysoftwareab/homebrew-tap"
  url "https://github.com/ysoftwareab/homebrew-tap/archive/refs/tags/poetry-python-1.8.tar.gz"
  sha256 "13e60fd05b6cd2c5b339ca1dc09cecea7ad95cb76e75c83af4bdffe7d84491b3"
  license :public_domain
  head "https://github.com/ysoftwareab/homebrew-tap.git", branch: "master"

  def install
    bin.install "bin/poetry-python"
  end
end
