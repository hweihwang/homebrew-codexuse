cask "codexuse" do
  version "2.5.5"
  sha256 "5b4d46b3a182793ccdaacf25c039e7752b3fb15c9da63e7c8c5473f8aca35d75"

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
