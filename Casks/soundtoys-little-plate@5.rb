cask "soundtoys-little-plate@5" do
  version "5.5.4.18982"
  sha256 "1fc2e1a6819ff3255dd18bddf47ebf1ba589d6d85a1710de9b5b950932e1771d"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.dots_to_underscores}/LittlePlate#{version.major}_#{version}.dmg",
      verified: "storage.googleapis.com/soundtoys-download/versions/"
  name "Soundtoys Little Plate"
  desc "Lush sound of plate reverb – with a modern twist"
  homepage "https://www.soundtoys.com/product/little-plate/"

  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :json do |json|
      json.map do |key, item|
        next unless key.match?("LittlePlate#{version.major}_Mac")

        item["fullversion"]
      end
    end
  end

  depends_on :macos

  pkg "Install Little Plate.pkg"

  # The Soundtoys application bundles the install of the iLok License Manager
  # this is often shared with other applications and should not be removed
  # it also isn't removed by the Soundtoys uninstaller
  # pkgutil: "com.paceap.pkg.*"
  # launchctl: "com.paceap.eden.*"
  # delete: "/usr/local/bin/iloktool"
  uninstall pkgutil: "com.soundtoys.LittlePlate#{version.major}.*"

  zap trash: "~/Library/Saved Application State/com.soundtoys.RemoveSoundtoys.savedState"
end
