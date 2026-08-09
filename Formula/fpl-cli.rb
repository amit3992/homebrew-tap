class FplCli < Formula
  desc "Command-line tool for Fantasy Premier League"
  homepage "https://github.com/amit3992/fpl-cli"
  url "https://github.com/amit3992/fpl-cli/releases/download/v0.4.1/amit3992-fpl-cli-0.4.1.tgz"
  sha256 "4da56d046ed14327db289026cdc4daf659a01ae235902c3344f47a2b960d88f6"
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
