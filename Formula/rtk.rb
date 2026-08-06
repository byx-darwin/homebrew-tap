class Rtk < Formula
  desc "CLI proxy that reduces LLM token consumption by 60-90% on common dev commands"
  homepage "https://github.com/byx-darwin/rtk"
  license "Apache-2.0"
  version "0.42.4"

  on_macos do
    on_arm do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-aarch64-apple-darwin.tar.gz"
      sha256 "b2a6e65e1367727965062e4fe56591089c2f918458157c6901e3e89d2c7480bf"
    end
    on_intel do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-x86_64-apple-darwin.tar.gz"
      sha256 "32b218f09bfa3d05be0ede3f8e84d16f2472f6504cf0451a10f979086dcddb3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c53bb54bea1c52285ec26e4641531a60689b64d10de40c7303374ad5a65a06ac"
    end
    on_intel do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0769455273d15c1e75de601352a1c04b210dba2d7038dd2d36f5d1cb3e34f193"
    end
  end

  def install
    bin.install "rtk"
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
