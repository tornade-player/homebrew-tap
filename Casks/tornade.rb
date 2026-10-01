cask "tornade" do
  version "1.8.0"
  sha256 "3473402a290c162ff3852886f4e65a9f02fc18ae127da97b4bdf5d25b2731520"

  url "https://github.com/tornade-player/tornade-releases/releases/download/v#{version}/Tornade.dmg"
  name "Tornade"
  desc "Native FLAC and lossless audio player for macOS"
  homepage "https://tornade.tf/"

  depends_on macos: ">= :ventura"

  app "Tornade.app"

  zap trash: [
    "~/Library/Application Support/Tornade",
    "~/Library/Preferences/com.tornade.app.plist",
  ]
end
