class Exifregistry < Formula
  desc "Photographer's metadata toolkit: inspect, fix and organize photos from the terminal"
  homepage "https://exifregistry.com"
  url "https://registry.npmjs.org/exifregistry/-/exifregistry-1.5.0.tgz"
  version "1.5.0"
  sha256 "0933d54cd2ddcaec83e432e2bc1c09c038277c66139f38c13ec598807a14e093"
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
