class Json < Formula
  require "language/node"

  desc "a 'json' command for massaging and processing JSON on the command line"
  homepage "https://trentm.com/json/"
  url "https://registry.npmjs.org/json/-/json-9.0.6.tgz"
  sha256 "6e8bfb5cbb7e7ee53231d3e3439b2ab1de58caed81b8abb30b9e1168e8ac01e2"
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
