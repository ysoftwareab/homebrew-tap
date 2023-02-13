class VscodeDevContainerCli < Formula
  require "language/node"

  desc "Command Line Interface (CLI) for VS Code Dev Containers"
  homepage "https://code.visualstudio.com/docs/remote/devcontainer-cli"
  url "https://registry.npmjs.org/@vscode/dev-container-cli/-/dev-container-cli-0.268.0.tgz"
  sha256 "c6177f0ea63d0dbe56c45a5d665cd5cfddda451ea2387c9b10d0153a304382b0"
  license "CC-BY-4.0"

  livecheck do
    url "https://registry.npmjs.org/@vscode/dev-container-cli/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  conflicts_with "devcontainers-cli", because: "both install a `devcontainer` executable"

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
