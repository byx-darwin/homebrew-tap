class Gf < Formula
  desc "Multi-platform Git forge CLI — unified interface for GitHub, GitLab, and GitCode"
  homepage "https://github.com/byx-darwin/gitflow-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v2.1.0/gf-aarch64-apple-darwin.tar.gz"
      sha256 "304cb9f22a263a271379e2b7ea2e102432fdf79bd491c1b77ccf2b057e1755d8"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v2.1.0/gf-x86_64-apple-darwin.tar.gz"
      sha256 "3726d3dc8a16a3857a940590f134656e37d65a16af45ad9540244ed996086cb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v2.1.0/gf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5d77f7dfaf1ef889dcd2cf4ec4b5103ec85e3559a819aebf623f25406fb26e1"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v2.1.0/gf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bac5d2013b213788eeeb6b3549eb05eb0291ddec6e4fa990449c4fe42713e79b"
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
