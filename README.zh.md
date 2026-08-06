# byx-darwin Homebrew Tap

[byx-darwin](https://github.com/byx-darwin) 工具的 Homebrew 软件包。

[English](README.md)

## 快速开始

```bash
brew tap byx-darwin/tap

# CLI 工具
brew install tokenless
brew install rtk

# 桌面应用
brew install --cask token-fleet-switch
```

## 可用软件包

### Formulae（命令行工具）

| 包名 | 说明 | 最新版本 |
|------|------|---------|
| `tokenless` | LLM Token 优化工具 — Schema/响应压缩、命令重写 | 1.2.0 |
| `rtk` | 命令行代理工具，在常见开发命令上降低 60-90% 的 LLM Token 消耗 | 0.42.4 |

### Casks（桌面应用）

| 包名 | 说明 | 最新版本 |
|------|------|---------|
| `token-fleet-switch` | AI 网关控制面板 — 管理厂商、模型、API 渠道链，实时监控费用 | 1.0.0 |

## 软件包详情

### `tokenless`

通过 Schema 压缩、响应压缩和命令重写来优化 LLM Token 用量的命令行工具。

```bash
brew install tokenless
tokenless --help
```

支持平台：macOS (arm64, x86_64)、Linux (x86_64)

### `rtk`

命令行代理工具，透明地在常见开发命令上降低 60-90% 的 LLM Token 消耗。单一 Rust 二进制，零依赖。

```bash
brew install rtk
rtk --help
```

支持平台：macOS (arm64, x86_64)、Linux (arm64, x86_64)

### `token-fleet-switch`

桌面应用，用于管理 AI API 网关的渠道、模型和厂商，支持实时费用监控和渠道智能切换。

```bash
brew install --cask token-fleet-switch
```

支持平台：macOS (arm64)

## 更新

通过 `brew upgrade` 自动更新：

```bash
brew update
brew upgrade tokenless
brew upgrade rtk
brew upgrade --cask token-fleet-switch
```

## 维护者指南

### 更新 Formula

1. 下载新版本的校验和：
   ```bash
   curl -sL https://github.com/byx-darwin/tokenless/releases/download/vX.Y.Z/checksums.txt
   ```
2. 更新 `Formula/tokenless.rb` 中的 `version`、`url` 和 `sha256`
3. 提交并推送到 `main`

### 更新 Cask

1. 计算 `.dmg` 文件的 SHA256：
   ```bash
   shasum -a 256 TokenFleet\ Switch_X.Y.Z_aarch64.dmg
   ```
2. 更新 `Casks/token-fleet-switch.rb` 中的 `version`、`url` 和 `sha256`
3. 提交并推送到 `main`
