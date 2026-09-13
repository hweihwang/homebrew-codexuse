cask "codexuse" do
  version "6.2.2"
  sha256 "dda725203d9035f3f2df19826fac33030fd24f9c92fffd5c253751a42b7a35d5"

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
