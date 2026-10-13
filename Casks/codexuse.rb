cask "codexuse" do
  version "7.2.0"
  sha256 "3a6a6a930287eba3612e908244345e46b5f8635eb1b0cc25eb2dc9b9e255cc8b"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/stable-macos-arm64-CodexUse.dmg"
  name "CodexUse"
  desc "All your Codex accounts side by side, each in its own Codex window"
  homepage "https://codexuse.com/"

  depends_on arch: :arm64

  app "CodexUse.app"

  uninstall quit: "com.codexuse.desktop"

  zap trash: [
    "~/.codexuse",
    "~/Library/Application Support/codexuse-desktop",
    "~/Library/Caches/com.codexuse.desktop",
    "~/Library/Cookies/com.codexuse.desktop.binarycookies",
    "~/Library/HTTPStorages/com.codexuse.desktop",
    "~/Library/LaunchAgents/com.codexuse.desktop.desktop-llm-gateway.plist",
    "~/Library/Logs/CodexUse",
    "~/Library/Preferences/com.codexuse.desktop.plist",
    "~/Library/Saved Application State/com.codexuse.desktop.savedState",
    "~/Library/WebKit/com.codexuse.desktop",
  ]
end
