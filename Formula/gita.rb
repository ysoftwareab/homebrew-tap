class Gita < Formula
  include Language::Python::Virtualenv

  desc "Manage many git repos with sanity 从容管理多个git库"
  homepage "https://github.com/nosarthur/gita"
  url "https://github.com/nosarthur/gita/archive/refs/tags/v0.16.8.2.tar.gz"
  sha256 "86e4c8f7a414afa0c2bcd5f3bb65f6df39730725138b6c51e39e34b2e2d4ee09"
  license "MIT"
  head "https://github.com/nosarthur/gita.git", branch: "master"

  depends_on "python@3.13"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/0c/be/6c23d80cb966fb8f83fb1ebfb988351ae6b0554d0c3a613ee4531c026597/argcomplete-3.5.3.tar.gz"
    sha256 "c12bf50eded8aebb298c7b7da7a5ff3ee24dffd9f5281867dfe1424b58c55392"
  end

  def install
    virtualenv_install_with_resources

    generate_completions_from_executable(libexec/"bin/register-python-argcomplete", "gita",
                                         shell_parameter_format: :arg)
  end

  test do
    system "#{bin}/gita", "--version"
  end
end
