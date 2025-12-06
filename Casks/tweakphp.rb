cask "tweakphp" do
  version "0.13.0"
  sha256 "a227e6a7b1a6f82ed646a0d26b0fd22629e0184003bc1d1d30bc5ec0f09feb7d"

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
