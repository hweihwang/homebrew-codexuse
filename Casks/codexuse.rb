cask "codexuse" do
  version "6.2.6"
  sha256 "c7ce0ceb37449ed4ba755c3797ccf3338473f58647a36239e226f03660eb52c7"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/stable-macos-arm64-CodexUse.dmg"
  name "CodexUse"
  desc "Plan and build with the right Codex account, one Codex window per account"
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
