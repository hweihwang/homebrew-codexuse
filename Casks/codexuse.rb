cask "codexuse" do
  version "3.1.0"
  sha256 "795c9ec1d54ab0845c855abc94042b97dbb127974097960e26e465d02a0a655e"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/stable-macos-arm64-CodexUse.dmg"
  name "CodexUse"
  desc "CodexUse desktop profile manager with rate-limit telemetry and multi-account tools."
  homepage "https://codexuse.com/"

  depends_on arch: :arm64
  auto_updates true

  app "CodexUse.app"

  uninstall quit: "com.codexuse.desktop"

  zap trash: [
    "~/Library/Application Support/codexuse-desktop",
    "~/Library/Logs/CodexUse",
    "~/Library/Preferences/com.codexuse.desktop.plist",
    "~/Library/Saved Application State/com.codexuse.desktop.savedState",
  ]
end
