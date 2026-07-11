class Exifregistry < Formula
  desc "Photographer's metadata toolkit: inspect, fix and organize photos from the terminal"
  homepage "https://exifregistry.com"
  url "https://registry.npmjs.org/exifregistry/-/exifregistry-1.4.0.tgz"
  sha256 "edad73507e4528dc29d0cd960895ad9b618d6b68c6ecd5366ba533df0fbc9793"
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
