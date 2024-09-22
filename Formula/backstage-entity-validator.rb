class BackstageEntityValidator < Formula
  require "language/node"

  desc "Backstage entity validator"
  homepage "https://github.com/RoadieHQ/backstage-entity-validator"
  url "https://registry.npmjs.org/@roadiehq/backstage-entity-validator/-/backstage-entity-validator-0.5.1.tgz"
  sha256 "273b3a33457f7b23aba151e7b63f34eae406e93aa0c11d224a5e5589aafd8b55"
  license "Apache-2.0"

  livecheck do
    url "https://registry.npmjs.org/@roadiehq/backstage-entity-validator/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    # bin.install_symlink Dir["#{libexec}/bin/*"]
    bin.install_symlink "#{libexec}/bin/validate-entity" => "backstage-entity-validator"
  end

  test do
    system "#{bin}/bev", "-h"
    assert_predicate testpath/"package.json", :exist?, "package.json must exist"
  end
end
