class PoetryPython < Formula
  desc "A shebang for installing poetry deps before running a python script"
  homepage "https://github.com/ysoftwareab/homebrew-tap"
  url "https://github.com/ysoftwareab/homebrew-tap/archive/refs/tags/poetry-python-1.4.tar.gz"
  sha256 "0fa69e5e7b152a19ff522edd28e0c5253265b372b6037866cb4dbf8919c61c7b"
  license :public_domain
  head "https://github.com/ysoftwareab/homebrew-tap.git", branch: "master"

  def install
    bin.install "bin/poetry-python"
  end
end
