cask "multipaste" do
  version "1.8.0"
  sha256 "c200bbcd42704e46d78a92bace39dbd5c6517f397fbdbbf99578f2b211d450be"

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
