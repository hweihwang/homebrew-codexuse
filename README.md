# CodexUse for Homebrew

Install [CodexUse](https://codexuse.com) on an Apple Silicon Mac:

```bash
brew install --cask hweihwang/codexuse/codexuse
```

Update it with Homebrew, which replaces the in-app updater for this install:

```bash
brew upgrade --cask codexuse
```

CodexUse keeps every Codex account in its own Codex home and its own Codex window. One account plans a task, another builds it in an isolated Git worktree, and you review the diff before you accept it. Every feature is free to try for 7 days, then a one-time Pro license keeps them.

The cask needs macOS 13 or newer on Apple Silicon. For Windows and Linux packages, use the [latest release](https://github.com/hweihwang/codexuse-desktop-releases/releases/latest). The CLI installs on every platform with `npm install -g codexuse-cli`.

`brew uninstall --zap --cask codexuse` also removes the app's settings, saved accounts, and logs from this Mac.

[Website](https://codexuse.com) · [Docs](https://codexuse.com/docs/) · [Issues](https://github.com/hweihwang/codexuse-desktop-releases/issues) · Independent, not affiliated with OpenAI.
