class FplCli < Formula
  desc "Command-line tool for Fantasy Premier League"
  homepage "https://github.com/amit3992/fpl-cli"
  url "https://github.com/amit3992/fpl-cli/releases/download/v0.3.0/amit3992-fpl-cli-0.3.0.tgz"
  sha256 "ec08c0203de7b52d28397c446c2ec037db7d825a81f40e979ce118098cdbea01"
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
