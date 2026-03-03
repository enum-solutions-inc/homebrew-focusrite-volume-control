cask "focusrite-volume-control" do
  version "1.2"
  sha256 :no_check # Updated automatically by release workflow

  url "https://github.com/nickmorozov/FocusriteVolumeControl/releases/download/v#{version}/FocusriteVolumeControl.dmg"
  name "Focusrite Volume Control"
  desc "Control Focusrite Scarlett 4th gen volume with media keys via Focusrite Control 2"
  homepage "https://nickmorozov.github.io/FocusriteVolumeControl/"

  depends_on macos: ">= :sequoia"

  app "FocusriteVolumeControl.app"

  zap trash: [
    "~/Library/Preferences/net.nickmorozov.FocusriteVolumeControl.plist",
  ]
end
