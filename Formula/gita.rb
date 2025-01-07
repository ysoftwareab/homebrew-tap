class Gita < Formula
  include Language::Python::Virtualenv

  desc "Manage many git repos with sanity 从容管理多个git库"
  homepage "https://github.com/nosarthur/gita"
  url "https://github.com/nosarthur/gita/archive/refs/tags/v0.16.7.2.tar.gz"
  sha256 "9ae73a3fda7cc242017f496ccc7494d18e2ccc1f1d82eed137a1f7d6c2b7de03"
  license "MIT"
  head "https://github.com/nosarthur/gita.git", branch: "master"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end
end
