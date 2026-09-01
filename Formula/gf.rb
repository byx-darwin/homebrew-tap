class Gf < Formula
  desc "Multi-platform Git forge CLI — unified interface for GitHub, GitLab, and GitCode"
  homepage "https://github.com/byx-darwin/gitflow-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.8.0/gf-aarch64-apple-darwin.tar.gz"
      sha256 "e40776bfeb6c2112a7fcf57d7fd2fbdc09e00305e7f21f368903e1782022f80b"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.8.0/gf-x86_64-apple-darwin.tar.gz"
      sha256 "4f49ffbf3c107267a7f547b8aa314c223bc3563f752e1f30776b3fc01c63ef72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.8.0/gf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1029497ce579e9e22416d70ebe5ebca8df78c62a0ea9acf782e5f2f1caaae852"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.8.0/gf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c22d6b7b6116119deaff9e70a5bf73a45db9088063f609ffde593427bd322190"
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
