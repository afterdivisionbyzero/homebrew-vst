cask "soundtheory-gullfoss" do
  version "1.12.1"
  sha256 "c3972eccbf808cf483d252272acaef21c3f0b0d1162f366c7b1101b274cca157"

  url "https://www.soundtheory.com/static/Soundtheory%20Gullfoss%20#{version}.dmg"
  name "Gullfoss"
  desc "Intelligent equalizer audio plugin"
  homepage "https://www.soundtheory.com/"

  depends_on cask: "ilok-license-manager"
  depends_on :macos

  pkg "Gullfoss #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.soundtheory.gullfoss.aax.install",
    "com.soundtheory.gullfoss.audiounit.install",
    "com.soundtheory.gullfoss.vst.install",
    "com.soundtheory.gullfoss.vst3.install",
  ]
end
