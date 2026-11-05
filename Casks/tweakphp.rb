cask "tweakphp" do
  version "0.15.0"
  sha256 "d5518c152cea8c26e528ecda21d3d2a93c346faca9f3097f1d15b71d6551c55c"

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
