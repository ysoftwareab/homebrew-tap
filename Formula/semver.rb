class Semver < Formula
  require "language/node"

  desc "Semantic version parser used by npm"
  homepage "https://github.com/npm/node-semver"
  url "https://registry.npmjs.org/semver/-/semver-7.3.8.tgz"
  sha256 "6335adae62c368e61db516d4b9a5aa3cc1792322e0f50c71d9e8a50f8fab2d52"
  license "ISC"

  livecheck do
    url "https://registry.npmjs.org/semver/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/semver", "--help"
  end
end
