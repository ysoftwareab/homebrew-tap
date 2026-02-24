class MarkdownlintCli < Formula
  require "language/node"

  desc "MarkdownLint command-line interface"
  homepage "https://github.com/igorshubovych/markdownlint-cli"
  url "https://registry.npmjs.org/markdownlint-cli/-/markdownlint-cli-0.39.0.tgz"
  sha256 "3ac4533a0f5ea881fb0580818c0decb0b5c15627fa99aa005617866f6599e511"
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
  end
end
