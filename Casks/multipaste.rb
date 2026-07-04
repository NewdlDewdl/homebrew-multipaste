cask "multipaste" do
  version "2.4.1"
  sha256 "bf3f6ec84f6daa53760de480c057968f4554938b844a5bcc578755c3870c4d73"

  url "https://github.com/NewdlDewdl/multipaste/releases/download/v#{version}/Multipaste-#{version}.dmg"
  name "Multipaste"
  desc "Clipboard history and snippet expansion"
  homepage "https://github.com/NewdlDewdl/multipaste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Multipaste.app"

  zap trash: [
    "~/Library/Application Support/Multipaste",
    "~/Library/Caches/com.rohin.multipaste",
    "~/Library/LaunchAgents/com.rohin.multipaste.plist",
    "~/Library/Logs/Multipaste",
    "~/Library/Preferences/com.rohin.multipaste.plist",
  ]
end
