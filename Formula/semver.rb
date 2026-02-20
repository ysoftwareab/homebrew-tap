class Semver < Formula
  require "language/node"

  desc "Semantic version parser used by npm"
  homepage "https://github.com/npm/node-semver"
  url "https://registry.npmjs.org/semver/-/semver-7.7.4.tgz"
  sha256 "09267ad08cfe300e6790c9b8dc3db079103b4700cc465a67779b15662fe9418c"
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
    assert_path_exists testpath/"package.json"
  end
end
