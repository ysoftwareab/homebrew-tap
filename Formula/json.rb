class Json < Formula
  require "language/node"

  desc "a 'json' command for massaging and processing JSON on the command line"
  homepage "https://trentm.com/json/"
  url "https://registry.npmjs.org/json/-/json-11.0.0.tgz"
  sha256 "cf9adea69034d7b05bf7a76604eed743d98579d4ccb368184c2594588d85cdc0"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/json/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/json", "--version"
    assert_predicate testpath/"package.json", :exist?, "package.json must exist"
  end
end
