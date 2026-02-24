class MarkdownlintCliTwo < Formula
  require "language/node"

  desc "Fast, flexible command-line interface for linting Markdown files"
  homepage "https://github.com/DavidAnson/markdownlint-cli2"
  url "https://registry.npmjs.org/markdownlint-cli2/-/markdownlint-cli2-0.12.1.tgz"
  sha256 "480c949c85742c44c48e83fc2595aaf50e0c7d2778d2da5a48bb5668d378b7f5"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/markdownlint-cli2/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/markdownlint-cli2", "--version"
  end
end
