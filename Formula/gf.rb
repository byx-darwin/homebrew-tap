class Gf < Formula
  desc "Multi-platform Git forge CLI — unified interface for GitHub, GitLab, and GitCode"
  homepage "https://github.com/byx-darwin/gitflow-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.9.0/gf-aarch64-apple-darwin.tar.gz"
      sha256 "4fa427b14d6b554f7f90131679ffe210609faf36e27cce1229346072a74b9fc9"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.9.0/gf-x86_64-apple-darwin.tar.gz"
      sha256 "cc55239de3f7c483b35fc9848b93e110c52379069e321ac44813aa16f9a67c21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.9.0/gf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "05beab1cbc7cf20e8edb8db6644dfcfa096f68d13e3bd85aa0b7239362409470"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.9.0/gf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2c34e072093df8f7f7ea90a73b4fb7729491cef3772ee093eb1f48b63527330"
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
