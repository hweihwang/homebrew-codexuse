cask "codexuse" do
  version "2.4.16"
  sha256 "61df9ab9c83dde6bcb41d38149936012fc9a709da92b09ee851003e93041103d"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/CodexUse-mac-arm64.dmg"
  name "CodexUse"
  desc "CodexUse desktop profile manager with rate-limit telemetry and multi-account tools."
  homepage "https://codexuse.com/"

  depends_on arch: :arm64
  auto_updates true

  app "CodexUse.app"
  binary "#{appdir}/CodexUse.app/Contents/Resources/bin/codexuse"

  uninstall quit: "com.codexuse.desktop"

  zap trash: [
    "~/Library/Application Support/CodexUse",
    "~/Library/Logs/CodexUse",
    "~/Library/Preferences/com.codexuse.desktop.plist",
    "~/Library/Saved Application State/com.codexuse.desktop.savedState",
  ]
end
