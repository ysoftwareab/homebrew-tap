class Terraformsh < Formula
  desc "Wrapper for Terraform in Bash"
  homepage "https://github.com/pwillis-els/terraformsh"
  url "https://github.com/pwillis-els/terraformsh/archive/refs/tags/v0.15.tar.gz"
  sha256 "e4c35c696de839faead7d8dcf5d84761d14b0845a629494c6182fc89ac5d9ab1"
  license "MIT"
  head "https://github.com/pwillis-els/terraformsh.git", branch: "master"

  def install
    bin.install "terraformsh"
  end
  test do
    system "#{bin}/terraformsh", "-h"
  end
end
