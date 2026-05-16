cask "multipaste" do
  version "2.0.0"
  sha256 "e354fcb3ac1382fc2b18d557d2ec0ee44230db64b70719944a388773ca5d51ba"

  url "https://github.com/NewdlDewdl/multipaste/releases/download/v#{version}/Multipaste-#{version}.dmg"
  name "Multipaste"
  desc "Clipboard history and snippet expansion"
  homepage "https://github.com/NewdlDewdl/multipaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Multipaste.app"

  zap trash: [
    "~/Library/Application Support/Multipaste",
    "~/Library/Caches/com.rohin.multipaste",
    "~/Library/LaunchAgents/com.rohin.multipaste.plist",
    "~/Library/Logs/Multipaste",
    "~/Library/Preferences/com.rohin.multipaste.plist",
  ]
end
