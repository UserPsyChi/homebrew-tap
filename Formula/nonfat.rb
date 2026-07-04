# typed: false
# frozen_string_literal: true

class Nonfat < Formula
  desc "Token-efficiency CLI for AI coding tools"
  homepage "https://nonfat.ai"
  license "Apache-2.0"
  version "0.1.0"

  head "https://github.com/UserPsyChi/nonfat-cli.git", branch: "main"

  depends_on "node@20"

  # Reserved until nonfat-cli is public and tagged v0.1.0 (WP-A10 release.yml pins url/sha256).
  disable! date: "2026-12-31", because: "Awaiting public nonfat-cli v0.1.0 — see https://github.com/UserPsyChi/homebrew-tap"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/nonfat"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/nonfat version").strip
  end
end
