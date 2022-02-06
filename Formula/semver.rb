class Semver < Formula
  require "language/node"

  desc "The semantic version parser used by npm"
  homepage "https://github.com/npm/node-semver"
  url "https://registry.npmjs.org/semver/-/semver-7.3.5.tgz"
  sha256 "af1f802439e20980a10b03c879fcc89921793f51b95252e805a8ba8079a6599e"
  license "ISC"

  livecheck do
    url "https://registry.npmjs.org/semver/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/semver", "--help"
    assert_predicate testpath/"package.json", :exist?, "package.json must exist"
  end
end
