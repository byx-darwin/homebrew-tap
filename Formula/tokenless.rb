class Tokenless < Formula
  desc "LLM token optimization toolkit — schema/response compression, command rewriting"
  homepage "https://github.com/byx-darwin/tokenless"
  license "Apache-2.0"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/byx-darwin/tokenless/releases/download/v1.2.0/tokenless-aarch64-apple-darwin.tar.gz"
      sha256 "cd57430cd57c8b8469454c0b986d5a78b2773bfb9eda7d6647a7ede2caf0170a"
    end
    on_intel do
      url "https://github.com/byx-darwin/tokenless/releases/download/v1.2.0/tokenless-x86_64-apple-darwin.tar.gz"
      sha256 "fe952dc4685744b5a78a48fdf122d3c28691cc68a10a6fcd3123b5984a9120a5"
    end
  end

  on_linux do
    url "https://github.com/byx-darwin/tokenless/releases/download/v1.2.0/tokenless-x86_64-unknown-linux-musl.tar.gz"
    sha256 "00428bd2715a915690f2c964ea3d22124bed4f018e42d5435db4c10e1bf59271"
  end

  def install
    bin.install "tokenless"
  end

  test do
    system "#{bin}/tokenless", "--version"
  end
end
