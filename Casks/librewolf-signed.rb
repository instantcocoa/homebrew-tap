cask "librewolf-signed" do
  version "150.0.3-1"
  sha256 "86406ead3a19a7b4a2585bd7fc8834c1a6a0c0f96fc86bd1be643b9689799dbd"

  url "https://github.com/instantcocoa/librewolf-signed/releases/download/v#{version}/librewolf-#{version}-macos-universal.dmg"
  name "LibreWolf"
  desc "Privacy-focused Firefox fork, signed and notarized"
  homepage "https://github.com/instantcocoa/librewolf-signed"

  livecheck do
    url :url
    strategy :github_latest
    regex(/v?(\d+(?:\.\d+)+-\d+)/i)
  end

  app "LibreWolf.app"

  zap trash: [
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Preferences/com.instantcocoa.librewolf.plist",
    "~/Library/Saved Application State/com.instantcocoa.librewolf.savedState",
  ]
end
