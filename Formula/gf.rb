class Gf < Formula
  desc "Multi-platform Git forge CLI — unified interface for GitHub, GitLab, and GitCode"
  homepage "https://github.com/byx-darwin/gitflow-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.5.0/gf-aarch64-apple-darwin.tar.gz"
      sha256 "3866401996dd42bd86d7cd828598d95da7d033287c9ea6ea18d6f5e08f1be50d"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.5.0/gf-x86_64-apple-darwin.tar.gz"
      sha256 "5da0aba82e9c7e4baba5816ea4597bdd0019c4797d4a463e7f67b7846a43f4b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.5.0/gf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04875102bcdad7e3e62dfd66c64b1c6e334aad24933c548f33e15fd86dc1947e"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.5.0/gf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29aa96b46abfd312c16de524e35ff53c77509b3f45bfc97c2d0bb2567aba377c"
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
