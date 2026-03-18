cask "librewolf-signed" do
  version "148.0.2-3"
  sha256 "dd85c59232cca6a39691c1414b5f268940eac0a8475482a346c30f33c7962044"

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
