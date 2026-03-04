cask "focusrite-volume-control" do
  version "1.4.3"
  sha256 "09676d39171ed91caef1490677b614b502b464337f5fcf798b88ac3be5b5b74a"

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
