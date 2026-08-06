class Rtk < Formula
  desc "CLI proxy that reduces LLM token consumption by 60-90% on common dev commands"
  homepage "https://github.com/byx-darwin/rtk"
  license "Apache-2.0"
  version "0.42.4"

  on_macos do
    on_arm do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-aarch64-apple-darwin.tar.gz"
      sha256 "6594dfd5cf36a1bac2c37feeb5509e8ef52850b16266dc5e05c216b2444b41e4"
    end
    on_intel do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-x86_64-apple-darwin.tar.gz"
      sha256 "c83fed6ad90fddb1f24fca1dd0f6745b0eba236acd01b52914f270d4aadf82b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d8c87593905fe16d70326a9ce6a171471f018bc782ae8d01bf8672bbee2dca3"
    end
    on_intel do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6a08fa23a265084a7df7b2733608177336c1abe35522a34509dcdbc6be4ea2a"
    end
  end

  def install
    bin.install "rtk"
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
