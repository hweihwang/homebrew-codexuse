cask "codexuse" do
  version "6.0.6"
  sha256 "049d5b8b863269b2a48337c554ee1bac6a0b63282686f99b3e5a62b94a0b3b63"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/stable-macos-arm64-CodexUse.dmg"
  name "CodexUse"
  desc "Profile manager for the Codex app with rate limits and custom model providers"
  homepage "https://codexuse.com/"

  depends_on arch: :arm64

  app "CodexUse.app"

  uninstall quit: "com.codexuse.desktop"

  zap trash: [
    "~/Library/Application Support/codexuse-desktop",
    "~/Library/Logs/CodexUse",
    "~/Library/Preferences/com.codexuse.desktop.plist",
    "~/Library/Saved Application State/com.codexuse.desktop.savedState",
  ]
end
