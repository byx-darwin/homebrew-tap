cask "token-fleet-switch" do
  version "1.0.3"

  name "TokenFleet Switch"
  desc "AI gateway control panel — manage providers, models, and API channel chains"
  homepage "https://github.com/byx-darwin/token-fleet-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_arm do
    url "https://github.com/byx-darwin/token-fleet-switch/releases/download/v#{version}/TokenFleet.Switch_#{version}_aarch64.dmg"
    sha256 "382352f875fea4f4c1e2bc9f098a7ebfbd65c0378f394ed5c32494d813429b2b"
  end

  on_intel do
    url "https://github.com/byx-darwin/token-fleet-switch/releases/download/v#{version}/TokenFleet.Switch_#{version}_x64.dmg"
    sha256 "56bfa3d2aa57390ba9cc2f846ae779bc989f794c8e84432045e7d4212caa6e32"
  end

  app "TokenFleet Switch.app"

  zap trash: [
    "~/Library/Application Support/com.tokenfleet.switch",
    "~/Library/Caches/com.tokenfleet.switch",
    "~/Library/Preferences/com.tokenfleet.switch.plist",
    "~/.tokenfleet-ai",
  ]
end
