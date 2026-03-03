cask "focusrite-volume-control" do
  version "1.3"
  sha256 "2e2a06c92d7fde980fc07a94b755ee72306ba541b72574f54d3d74d364710f83"

  url "https://github.com/enum-solutions-inc/focusrite-volume-control/releases/download/v#{version}/FocusriteVolumeControl.dmg"
  name "Focusrite Volume Control"
  desc "Control Focusrite Scarlett 4th gen volume with media keys via Focusrite Control 2"
  homepage "https://enum-solutions-inc.github.io/focusrite-volume-control/"

  depends_on macos: ">= :sequoia"

  app "Focusrite Volume Control.app"

  zap trash: [
    "~/Library/Preferences/net.nickmorozov.FocusriteVolumeControl.plist",
  ]
end
