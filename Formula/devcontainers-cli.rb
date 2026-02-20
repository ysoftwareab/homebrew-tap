class DevcontainersCli < Formula
  require "language/node"

  desc "Dev Containers CLI"
  homepage "https://code.visualstudio.com/docs/remote/devcontainer-cli"
  url "https://registry.npmjs.org/@devcontainers/cli/-/cli-0.83.2.tgz"
  sha256 "0f2a46140671dd7fc734662ed3628d5b942402f7bfb71ce1e2053117d7616085"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/@devcontainers/cli/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  conflicts_with "vscode-dev-container-cli", because: "both install a `devcontainer` executable"

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
