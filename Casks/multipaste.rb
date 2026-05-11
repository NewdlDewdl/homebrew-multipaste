cask "multipaste" do
  version "1.7.1"
  sha256 "414ca1b9a699015b763d8a7fbd961482d0e5e5e874009a220452f938bca4e29c"

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
