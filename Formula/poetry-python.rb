class PoetryPython < Formula
  desc "A shebang for installing poetry deps before running a python script"
  homepage "https://github.com/ysoftwareab/homebrew-tap"
  url "https://github.com/ysoftwareab/homebrew-tap/archive/refs/tags/poetry-python-1.2.tar.gz"
  sha256 "09557834340dd9990e7796dbd17fe3e0c454e433bc880ae3cb259dce62cabe55"
  license :public_domain
  head "https://github.com/ysoftwareab/homebrew-tap.git", branch: "master"

  def install
    bin.install "bin/poetry-python"
  end
end
