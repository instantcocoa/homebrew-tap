cask "librewolf-signed" do
  version "155.0.1-1"
  sha256 "9c26c80ffff1f8a1b92945666a64388e7e42ec2078c529e2c0d8aa4db79bfa92"

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
