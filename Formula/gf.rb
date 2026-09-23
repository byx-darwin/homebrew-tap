class Gf < Formula
  desc "Multi-platform Git forge CLI — unified interface for GitHub, GitLab, and GitCode"
  homepage "https://github.com/byx-darwin/gitflow-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v2.0.0/gf-aarch64-apple-darwin.tar.gz"
      sha256 "17e7c9a9eb037ece3fb04c578862ea97bcd508dbc9371db683a90d62330a76c7"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v2.0.0/gf-x86_64-apple-darwin.tar.gz"
      sha256 "fee41349fb7fa0eb342d8f14d5cba7a78ae1f0d96d84649ff5e8453f60f78edf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v2.0.0/gf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fa5b7b76a032d0c75e7c15e50fb24598a34f3f29cd2323ef0f4fbd22b2bedb2"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v2.0.0/gf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd01cbd14dcb278350ffb0f6a6d18e6c6df5daf73f07cd27ea5ba3417078156d"
    end
  end

  # gh CLI 是运行时依赖（GitHub 平台需要）
  # glab 和 gc 是可选的（GitLab/GitCode 平台需要）
  depends_on "gh"

  def install
    bin.install "gf"

    # 安装 Shell 补全
    generate_completions_from_executable(bin/"gf", "completions")
  end

  test do
    system "#{bin}/gf", "--version"
    system "#{bin}/gf", "--help"
  end
end
