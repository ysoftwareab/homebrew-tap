class PoetryPython < Formula
  desc "A shebang for installing poetry deps before running a python script"
  homepage "https://github.com/ysoftwareab/homebrew-tap"
  url "https://github.com/ysoftwareab/homebrew-tap/archive/refs/tags/poetry-python-1.5.tar.gz"
  sha256 "96a19f2a351724c082abe5db8fb8ce43f817cf4032b365174fe1dcfbb7c275f5"
  license :public_domain
  head "https://github.com/ysoftwareab/homebrew-tap.git", branch: "master"

  def install
    bin.install "bin/poetry-python"
  end
end
