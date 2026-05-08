cask "librewolf-signed" do
  version "150.0.2-1"
  sha256 "888373d477ef468732540195d93feb53192fc30135506bcc4f60d65555b19c70"

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
