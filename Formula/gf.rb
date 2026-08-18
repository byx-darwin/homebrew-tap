class Gf < Formula
  desc "Multi-platform Git forge CLI — unified interface for GitHub, GitLab, and GitCode"
  homepage "https://github.com/byx-darwin/gitflow-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.4.0/gf-1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "15ec6f4b421981cab1b210ec92157a756eaf69f25723606f1d6a20d6a1175893"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.4.0/gf-1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "34ff2b4c7a069e7fde2e119e09d14cd314d8e6dce49f998ac1e31f1e9a97eb59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.4.0/gf-1.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5dee9aaf5201df070db1826d53797a974339a767ec5745a7d7082dba6ccf9c76"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.4.0/gf-1.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d921593266a57d5b3254dfa6925ee3fbaaaa6e68e3bb35212ffe74f4fe5c84a"
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
