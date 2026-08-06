cask "token-fleet-switch" do
  version "1.0.1"

  name "TokenFleet Switch"
  desc "AI gateway control panel — manage providers, models, and API channel chains"
  homepage "https://github.com/byx-darwin/token-fleet-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_arm do
    url "https://github.com/byx-darwin/token-fleet-switch/releases/download/v#{version}/TokenFleet.Switch_#{version}_aarch64.dmg"
    sha256 "a2cf1ddf8affc54be37c3fda2ce31787004cb249577749e7675eb641b6720d08"
  end

  on_intel do
    url "https://github.com/byx-darwin/token-fleet-switch/releases/download/v#{version}/TokenFleet.Switch_#{version}_x64.dmg"
    sha256 "TODO_FILL_AFTER_RELEASE"
  end

  app "TokenFleet Switch.app"

  zap trash: [
    "~/Library/Application Support/com.tokenfleet.switch",
    "~/Library/Caches/com.tokenfleet.switch",
    "~/Library/Preferences/com.tokenfleet.switch.plist",
    "~/.tokenfleet-ai",
  ]
end
