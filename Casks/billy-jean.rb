cask "billy-jean" do
  version "1.0.0"

  on_arm do
    sha256 "acc7655209090623152ab73f004ec645fcaa4051ab2150f62aa0a5d0adf674a9"

    url "https://github.com/pravinbashyal/billing/releases/download/v#{version}/Billy-Jean-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "16aee97acf04064ac6a30f6d828e65136be61826f6979ed9c5cd3953e892c120"

    url "https://github.com/pravinbashyal/billing/releases/download/v#{version}/Billy-Jean-#{version}-x86_64.dmg"
  end

  name "Billy Jean"
  desc "Desktop app for writing invoices as PDF files"
  homepage "https://github.com/pravinbashyal/billing"

  depends_on :macos

  app "Billy Jean.app"

  zap trash: "~/Library/Application Support/com.pravinbashyal.billing"

  caveats do
    <<~EOS
      This cask is distributed via a personal (non-official) Homebrew tap and
      installs an unsigned, non-notarized build of Billy Jean.

      On first launch macOS may block the app. On macOS 15 (Sequoia) and later,
      open System Settings > Privacy & Security, click "Open Anyway" and confirm
      once. On older macOS, Control-click "Billy Jean" in Applications and choose
      Open. If neither offers an override, run:
        xattr -dr com.apple.quarantine "/Applications/Billy Jean.app"
    EOS
  end
end
