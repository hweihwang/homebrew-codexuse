cask "codexuse" do
  version "6.2.3"
  sha256 "b0854a0a97ccec438a605d77be8f6e417d44fcfed79bff8ae2b517130afaa3da"

  url "https://github.com/hweihwang/codexuse-desktop-releases/releases/download/v#{version}/stable-macos-arm64-CodexUse.dmg"
  name "CodexUse"
  desc "Plan and build with the right Codex account, one Codex window per account"
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
