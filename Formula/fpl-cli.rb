class FplCli < Formula
  desc "Command-line tool for Fantasy Premier League"
  homepage "https://github.com/amit3992/fpl-cli"
  url "https://github.com/amit3992/fpl-cli/releases/download/v0.2.0/amit3992-fpl-cli-0.2.0.tgz"
  sha256 "1b613abef631d838a76e6b0375db28285bbce1d4935512de914ba9d50a6e1833"
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
