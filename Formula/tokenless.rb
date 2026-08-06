class Tokenless < Formula
  desc "LLM token optimization toolkit — schema/response compression, command rewriting"
  homepage "https://github.com/byx-darwin/tokenless"
  license "Apache-2.0"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/byx-darwin/tokenless/releases/download/v1.1.0/tokenless-aarch64-apple-darwin.tar.gz"
      sha256 "63c7e548ba3ad57b85879e82ad81a144bc4dfd61393360dbb426bbe511d24a99"
    end
    on_intel do
      url "https://github.com/byx-darwin/tokenless/releases/download/v1.1.0/tokenless-x86_64-apple-darwin.tar.gz"
      sha256 "a3952963bb12be166bff36480b6d4c4d7ebb45b778c827c7be82c474058a491e"
    end
  end

  on_linux do
    url "https://github.com/byx-darwin/tokenless/releases/download/v1.1.0/tokenless-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9408d76dbbfbd906a78ec3af6922467b8cea5bf9c2e9a9d5bb872b571d7e43bc"
  end

  def install
    bin.install "tokenless"
  end

  test do
    system "#{bin}/tokenless", "--version"
  end
end
