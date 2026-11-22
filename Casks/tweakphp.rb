cask "tweakphp" do
  version "0.15.1"
  sha256 "f9c1e8a191f6127c352b3917d2bb783c8afc53aacf7cc4880132ea4acd4f3e65"

  url "https://github.com/tweakphp/tweakphp/releases/download/v#{version}/TweakPHP-#{version}-universal.dmg"
  name "TweakPHP"
  desc "Desktop application with a code editor to tweak your PHP code"
  homepage "https://tweakphp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TweakPHP.app"

  zap trash: [
    "~/Library/Application Support/TweakPHP",
    "~/Library/Caches/com.tweakphp.app",
    "~/Library/Caches/com.tweakphp.app.ShipIt",
    "~/Library/Logs/TweakPHP",
    "~/Library/Preferences/com.tweakphp.app.plist",
    "~/Library/Saved Application State/com.tweakphp.app.savedState",
  ]
end
