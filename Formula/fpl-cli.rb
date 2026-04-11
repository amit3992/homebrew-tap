class FplCli < Formula
  desc "Command-line tool for Fantasy Premier League"
  homepage "https://github.com/amit3992/fpl-cli"
  url "https://github.com/amit3992/fpl-cli/releases/download/v0.1.0/amit3992-fpl-cli-0.1.0.tgz"
  sha256 "8885bf87589696c52c868af8222af8ade7cf01062e12e60996bb5f63b8b8e96d"
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
