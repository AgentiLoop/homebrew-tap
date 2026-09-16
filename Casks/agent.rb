cask "agent" do
  version "1.1.33.233"
  sha256 "32272119b869f06b8377341f3a3cc7894649bc799a1dd021b3fb56eb058e27db"

  url "https://github.com/AgentiLoop/Agent/releases/download/v#{version}/Agent-v#{version}-macOS.dmg",
      verified: "github.com/AgentiLoop/Agent/"
  name "Agent!"
  name "AgentiLoop Agent!"
  desc "Native autonomous agent that codes, builds Xcode projects, drives Mac apps and runs shell tasks"
  homepage "https://agentiloop.ai/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Agent!.app"

  zap trash: [
    "~/Library/Caches/Agent.app.toddbruss",
    "~/Library/HTTPStorages/Agent.app.toddbruss",
    "~/Library/HTTPStorages/Agent.app.toddbruss.binarycookies",
    "~/Library/Preferences/Agent.app.toddbruss.plist",
  ]
end
