class DevcontainersCli < Formula
  require "language/node"

  desc "Dev Containers CLI"
  homepage "https://code.visualstudio.com/docs/remote/devcontainer-cli"
  url "https://registry.npmjs.org/@devcontainers/cli/-/cli-0.8.0.tgz"
  sha256 "1dc10cb78de6b07499bd4cf84b040a35763729d36e1f7b0c9fbb560cc3e022e2"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/@devcontainers/cli/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/devcontainer", "--help"
    assert_predicate testpath/"package.json", :exist?, "package.json must exist"
  end
end
