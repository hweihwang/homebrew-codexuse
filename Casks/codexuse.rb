cask "codexuse" do
  version "5.2.4"
  sha256 "4f7628391f837741d9de3be24b8f568b2672a2fef36367317d7e3312b9675f20"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/stable-macos-arm64-CodexUse.dmg"
  name "CodexUse"
  desc "CodexUse desktop profile manager with rate-limit telemetry and multi-account tools."
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
