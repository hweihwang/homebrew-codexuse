cask "codexuse" do
  version "2.4.20"
  sha256 "fc141cc5732baba08b6e8dc577ede5b78f1a1ad576f5a4ba73f91eddc3f687f8"

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
