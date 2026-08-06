cask "token-fleet-switch" do
  version "1.0.2"

  name "TokenFleet Switch"
  desc "AI gateway control panel — manage providers, models, and API channel chains"
  homepage "https://github.com/byx-darwin/token-fleet-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_arm do
    url "https://github.com/byx-darwin/token-fleet-switch/releases/download/v#{version}/TokenFleet.Switch_#{version}_aarch64.dmg"
    sha256 "3caa56f85af2be28fef0fef6a26f990e6fe1edd3bca17cd4672965f50180adda"
  end

  app "TokenFleet Switch.app"

  zap trash: [
    "~/Library/Application Support/com.tokenfleet.switch",
    "~/Library/Caches/com.tokenfleet.switch",
    "~/Library/Preferences/com.tokenfleet.switch.plist",
    "~/.tokenfleet-ai",
  ]
end
