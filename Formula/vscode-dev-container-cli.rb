class VscodeDevContainerCli < Formula
  require "language/node"

  desc "Command-line interface (CLI) for VS Code Dev Containers"
  homepage "https://code.visualstudio.com/docs/remote/devcontainer-cli"
  url "https://registry.npmjs.org/@vscode/dev-container-cli/-/dev-container-cli-0.292.0.tgz"
  sha256 "a3c7ec6ba883083ca00958cfdfe68f41015608bf11a217c88f865caf28d936a6"
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
