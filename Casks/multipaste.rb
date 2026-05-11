cask "multipaste" do
  version "1.6.0"
  sha256 "b482b0e07b4303bd6236ea6f42246c31ed917595781c6b2019738c98d02c8054"

  url "https://github.com/NewdlDewdl/multipaste/releases/download/v#{version}/Multipaste-#{version}.dmg"
  name "Multipaste"
  desc "Clipboard history and snippet expansion for macOS"
  homepage "https://github.com/NewdlDewdl/multipaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Multipaste.app"

  zap trash: [
    "~/Library/Application Support/Multipaste",
    "~/Library/Preferences/com.rohin.multipaste.plist",
    "~/Library/LaunchAgents/com.rohin.multipaste.plist",
    "~/Library/Logs/Multipaste",
    "~/Library/Caches/com.rohin.multipaste",
  ]
end
