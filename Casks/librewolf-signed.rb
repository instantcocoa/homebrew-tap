cask "librewolf-signed" do
  version "151.0.1-1"
  sha256 "6b8e21bc560f089f708dd75114e216aa2baeae6b538a9f539e0c52fd5e93508a"

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
