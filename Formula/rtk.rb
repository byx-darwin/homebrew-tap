class Rtk < Formula
  desc "CLI proxy that reduces LLM token consumption by 60-90% on common dev commands"
  homepage "https://github.com/byx-darwin/rtk"
  license "Apache-2.0"
  version "0.42.4"

  on_macos do
    on_arm do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-aarch64-apple-darwin.tar.gz"
      sha256 "57c49fa0b4f344c0e58d906dfca5ddbc477680f5e6617cfe302969fcdd546dd2"
    end
    on_intel do
      url "https://github.com/byx-darwin/rtk/releases/download/v0.42.4/rtk-x86_64-apple-darwin.tar.gz"
      sha256 "60c2f9d10df4039f2351374a23f11d739e3abca191345b0a203d69788c3ee7c3"
    end
  end

  def install
    bin.install "rtk"
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
