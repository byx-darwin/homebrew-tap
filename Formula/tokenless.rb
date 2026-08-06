class Tokenless < Formula
  desc "LLM token optimization toolkit — schema/response compression, command rewriting"
  homepage "https://github.com/byx-darwin/tokenless"
  license "Apache-2.0"
  version "1.1.2"

  on_macos do
    on_arm do
      url "https://github.com/byx-darwin/tokenless/releases/download/v1.1.2/tokenless-aarch64-apple-darwin.tar.gz"
      sha256 "631f27ef3cdc223de05342db3167f85a20d225f8bfbc8ee75e7226a7f4419853"
    end
    on_intel do
      url "https://github.com/byx-darwin/tokenless/releases/download/v1.1.2/tokenless-x86_64-apple-darwin.tar.gz"
      sha256 "0ed64d1f7c5d0ea7a8d5a24c261fa75e3ceacd28b244aaefb6e0caaade00e61d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/byx-darwin/tokenless/releases/download/v1.1.2/tokenless-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e50656cd9fe941f54a21a4ecb1bacf42ebf7faf3d3d11317aa6a646cd33065af"
    end
    on_intel do
      url "https://github.com/byx-darwin/tokenless/releases/download/v1.1.2/tokenless-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87c3039baf350f0d40f48f4b590123cfcf0422065488e52f901854c1a47e4445"
    end
  end

  def install
    bin.install "tokenless"
  end

  test do
    system "#{bin}/tokenless", "--version"
  end
end
