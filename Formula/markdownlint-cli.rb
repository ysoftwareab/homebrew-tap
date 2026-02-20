class MarkdownlintCli < Formula
  require "language/node"

  desc "MarkdownLint command-line interface"
  homepage "https://github.com/igorshubovych/markdownlint-cli"
  url "https://registry.npmjs.org/markdownlint-cli/-/markdownlint-cli-0.47.0.tgz"
  sha256 "9d5151fcf4f6b6824b5ca5cad5ce5c54846a38ddcace6049787addf21c7a06c6"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/markdownlint-cli/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/markdownlint", "--version"
    assert_path_exists testpath/"package.json"
  end
end
