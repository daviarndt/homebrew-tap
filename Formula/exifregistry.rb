class Exifregistry < Formula
  desc "Photographer's metadata toolkit: inspect, fix and organize photos from the terminal"
  homepage "https://exifregistry.com"
  url "https://registry.npmjs.org/exifregistry/-/exifregistry-1.6.0.tgz"
  version "1.6.0"
  sha256 "94ef50ed9d6a8ba66bfde5c735091840cfff6619d0b9fe1ecb779285bc9b9801"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "exifregistry #{version}", shell_output("#{bin}/exifreg --version")
  end
end
