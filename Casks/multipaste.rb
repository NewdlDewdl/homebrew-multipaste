cask "multipaste" do
  version "1.3.0"
  sha256 "022d34f22b194efd031777aaa50d0aabcd93370d7263a0b3e758a2651192e636"

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
