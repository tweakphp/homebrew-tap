cask "tweakphp" do
  version "0.13.1"
  sha256 "d4062f239844e48362038b33fcba2b54401c4fdeb72ef84386088dbebeb3be6f"

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
