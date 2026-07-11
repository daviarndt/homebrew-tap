class Exifregistry < Formula
  desc "Photographer's metadata toolkit: inspect, fix and organize photos from the terminal"
  homepage "https://exifregistry.com"
  url "https://registry.npmjs.org/exifregistry/-/exifregistry-main.tgz"
  sha256 ""
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
