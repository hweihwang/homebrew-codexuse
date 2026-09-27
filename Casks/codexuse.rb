cask "codexuse" do
  version "6.4.1"
  sha256 "7f887df6189cb152e36d7c80ece00bb7581b8b02e5432289d4e001694d2671ec"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/stable-macos-arm64-CodexUse.dmg"
  name "CodexUse"
  desc "Plan and build with the right Codex account"
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
