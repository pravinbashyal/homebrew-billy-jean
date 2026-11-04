cask "billy-jean" do
  version "1.0.0"

  on_arm do
    sha256 "f9146d9d3f4554f39d519b6d7b63ebb2bfa0bd7b3d97ba63b53f7a9cec9b07b2"

    url "https://github.com/pravinbashyal/billy-jean/releases/download/v#{version}/Billy-Jean-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "22f5ef520654264ea74dead9089efd2b4b58b8b1ce427ebafc66c66a2d0f9faf"

    url "https://github.com/pravinbashyal/billy-jean/releases/download/v#{version}/Billy-Jean-#{version}-x86_64.dmg"
  end

  name "Billy Jean"
  desc "Desktop app for writing invoices as PDF files"
  homepage "https://github.com/pravinbashyal/billy-jean"

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
