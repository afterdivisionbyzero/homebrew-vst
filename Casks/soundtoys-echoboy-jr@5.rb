cask "soundtoys-echoboy-jr@5" do
  version "5.5.4.18982"
  sha256 "908ad19098d891e85136f29a9965a096c2ebd9f558642131a6ac196863a9cbd5"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.dots_to_underscores}/EchoBoyJr#{version.major}_#{version}.dmg",
      verified: "storage.googleapis.com/soundtoys-download/versions/"
  name "Soundtoys EchoBoy Jr."
  desc "Seven iconic analog echo emulations in one easy-to-use plug-in"
  homepage "https://www.soundtoys.com/product/echoboy-jr/"

  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :json do |json|
      json.map do |key, item|
        next unless key.match?("EchoBoyJr#{version.major}_Mac")

        item["fullversion"]
      end
    end
  end

  depends_on :macos

  pkg "Install EchoBoy Jr..pkg"

  # The Soundtoys application bundles the install of the iLok License Manager
  # this is often shared with other applications and should not be removed
  # it also isn't removed by the Soundtoys uninstaller
  # pkgutil: "com.paceap.pkg.*"
  # launchctl: "com.paceap.eden.*"
  # delete: "/usr/local/bin/iloktool"
  uninstall pkgutil: "com.soundtoys.EchoBoyJr#{version.major}.*"

  zap trash: "~/Library/Saved Application State/com.soundtoys.RemoveSoundtoys.savedState"
end
