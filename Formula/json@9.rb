class JsonAT9 < Formula
  require "language/node"

  desc "JSON command for massaging and processing JSON on the command-line"
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
    system "npm", "install", *std_npm_args
    bin.install_symlink "#{libexec}/bin/json" => "json@9"
  end

  test do
    system "#{bin}/json@9", "--version"
  end
end
