class VscodeDevContainerCli < Formula
  require "language/node"

  desc "Command Line Interface (CLI) for VS Code Dev Containers"
  homepage "https://code.visualstudio.com/docs/remote/devcontainer-cli"
  url "https://registry.npmjs.org/@vscode/dev-container-cli/-/dev-container-cli-0.217.1.tgz"
  sha256 "2bc0f2887af01bc674f7ebc29183bc73d8a4162e6ee9c5394c2c903f3c04e99e"
  license "CC-BY-4.0"

  livecheck do
    url "https://registry.npmjs.org/@vscode/dev-container-cli/latest"
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
