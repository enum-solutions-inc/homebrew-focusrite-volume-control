cask "focusrite-volume-control" do
  version "1.3.1"
  sha256 "050f9cb8f5115fa817fcd235e6d813657a1862471a3034f9e418bca80ed2bb57"

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
