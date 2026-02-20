class Ajv < Formula
  require "language/node"

  desc "Another JSON Schema Validator"
  homepage "https://github.com/ajv-validator/ajv-cli"
  url "https://registry.npmjs.org/ajv-cli/-/ajv-cli-5.0.0.tgz"
  sha256 "d5bec37d30a8ed0add0ee1c63bb2b6e3ea279124e1a615b0a7806fe089963737"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/ajv-cli/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/ajv", "help"
    assert_path_exists testpath/"package.json"
  end
end
