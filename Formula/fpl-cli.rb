class FplCli < Formula
  desc "Command-line tool for Fantasy Premier League"
  homepage "https://github.com/amit3992/fpl-cli"
  url "https://github.com/amit3992/fpl-cli/releases/download/v0.5.0/amit3992-fpl-cli-0.5.0.tgz"
  sha256 "bcffa5d3d50399d8536b97b029b054a0e4d9d7d274f343f48eeac23e1f7e1128"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fpl --version")
  end
end
