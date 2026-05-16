cask "multipaste" do
  version "2.0.1"
  sha256 "ba25ce687766fa08c12e3fc1645d0693eafd1cf8d73436583deb9602a65b4f2e"

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
