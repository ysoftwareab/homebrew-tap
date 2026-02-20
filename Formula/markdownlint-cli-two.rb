class MarkdownlintCliTwo < Formula
  require "language/node"

  desc "A fast, flexible, configuration-based command-line interface for linting Markdown/CommonMark files with the `markdownlint` library"
  homepage "https://github.com/DavidAnson/markdownlint-cli2"
  url "https://registry.npmjs.org/markdownlint-cli2/-/markdownlint-cli2-0.21.0.tgz"
  sha256 "3ff893617ece08d5fffea2451d758cfad7cee1b96e64d5d4585e06ffb97091c3"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/markdownlint-cli2/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/markdownlint-cli2", "--version"
    assert_predicate testpath/"package.json", :exist?, "package.json must exist"
  end
end
