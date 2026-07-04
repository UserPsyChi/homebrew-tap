# typed: false
# frozen_string_literal: true

class Nonfat < Formula
  desc "Token-efficiency CLI for AI coding tools"
  homepage "https://nonfat.ai"
  license "Apache-2.0"
  head "https://github.com/UserPsyChi/nonfat-cli.git", branch: "main"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/nonfat"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nonfat version").strip
  end
end
