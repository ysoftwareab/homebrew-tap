class BackstageEntityValidator < Formula
  require "language/node"

  desc "Validator for Backstage entities"
  homepage "https://github.com/RoadieHQ/backstage-entity-validator"
  url "https://registry.npmjs.org/@roadiehq/backstage-entity-validator/-/backstage-entity-validator-0.6.3.tgz"
  sha256 "ed0f443917c5f1d3a828cc2435bf37c99c8f9159e5607e35790709478b19ea2a"
  license "Apache-2.0"

  livecheck do
    url "https://registry.npmjs.org/@roadiehq/backstage-entity-validator/latest"
    regex(/["']version["']:\s*?["']([^"']+)["']/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
    # Kept for backward compatibility
    bin.install_symlink "#{libexec}/bin/validate-entity" => "backstage-entity-validator"
  end

  test do
    system "#{bin}/validate-entity", "-h"
  end
end
