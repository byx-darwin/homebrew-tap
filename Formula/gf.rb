class Gf < Formula
  desc "Multi-platform Git forge CLI — unified interface for GitHub, GitLab, and GitCode"
  homepage "https://github.com/byx-darwin/gitflow-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.7.0/gf-aarch64-apple-darwin.tar.gz"
      sha256 "d11797465789a1dbbdde86376bbe637109094a50c22db4aa1e7c6c514bd93efc"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.7.0/gf-x86_64-apple-darwin.tar.gz"
      sha256 "28ee8aa98a193c4531fd262c1cc706e05d6c360a304246334a51e49e75f4887b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.7.0/gf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "551767c8c14b7d008337c62fdc6b625ad7e2f2f4ee5249a918f7ae60bf19386c"
    else
      url "https://github.com/byx-darwin/gitflow-cli/releases/download/v1.7.0/gf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2c10f638a7f57779119781c9a4929645c7ef733a7f29b849654f9a04d6cd78f"
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
