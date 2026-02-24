class VscodeDevContainerCli < Formula
  require "language/node"

  desc "Command-line interface (CLI) for VS Code Dev Containers"
  homepage "https://code.visualstudio.com/docs/remote/devcontainer-cli"
  url "https://registry.npmjs.org/@vscode/dev-container-cli/-/dev-container-cli-0.268.0.tgz"
  sha256 "c6177f0ea63d0dbe56c45a5d665cd5cfddda451ea2387c9b10d0153a304382b0"
  license "CC-BY-4.0"

  livecheck do
    url "https://registry.npmjs.org/@vscode/dev-container-cli/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  conflicts_with "devcontainers-cli", because: "both install a `devcontainer` executable"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/devcontainer", "--help"
  end
end
