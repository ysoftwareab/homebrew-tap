class TerraformSh < Formula
  desc "A wrapper for Terraform in Bash"
  homepage "https://github.com/pwillis-els/terraformsh"
  url "https://github.com/pwillis-els/terraformsh/archive/refs/tags/v0.13.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"
  head "https://github.com/pwillis-els/terraformsh.git", branch: "master"
  
  def install
    bin.install "terraformsh"
  end
  test do
    system "#{bin}/terraformsh", "-h"
  end
end
