class PoetryPython < Formula
  desc "A shebang for installing poetry deps before running a python script"
  homepage "https://github.com/ysoftwareab/homebrew-tap"
  url "https://github.com/ysoftwareab/homebrew-tap/archive/refs/tags/poetry-python-1.0.tar.gz"
  sha256 "04af757a634c57ca054472dff2f10b369d42522ae1bad258f7e9dfe44597e4cd"
  license :public_domain
  head "https://github.com/ysoftwareab/homebrew-tap.git", branch: "master"

  def install
    bin.install "bin/poetry-python"
  end
end
