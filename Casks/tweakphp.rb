cask "tweakphp" do
  version "0.12.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
