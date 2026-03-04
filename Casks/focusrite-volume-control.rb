cask "focusrite-volume-control" do
  version "1.4"
  sha256 "75f718af966139250111c28342e9e88170dc02b84b55065e87873c48b5aa39d3"

  url "https://github.com/enum-solutions-inc/focusrite-volume-control/releases/download/v#{version}/FocusriteVolumeControl.dmg"
  name "Focusrite Volume Control"
  desc "Control Focusrite Scarlett 4th gen volume with media keys via Focusrite Control 2"
  homepage "https://enum-solutions-inc.github.io/focusrite-volume-control/"

  depends_on macos: ">= :sequoia"

  app "Focusrite Volume Control.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Focusrite Volume Control.app"]
  end

  zap trash: [
    "~/Library/Preferences/net.nickmorozov.FocusriteVolumeControl.plist",
  ]
end
