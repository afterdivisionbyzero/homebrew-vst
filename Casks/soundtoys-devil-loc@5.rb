cask "soundtoys-devil-loc@5" do
  version "5.5.4.18982"
  sha256 "fa57107adbb1fefd08daba43043e2a397e648b726156d9a6e9fb4140cc088314"

  url "https://storage.googleapis.com/soundtoys-download/versions/version_#{version.dots_to_underscores}/DevilLoc#{version.major}_#{version}.dmg",
      verified: "storage.googleapis.com/soundtoys-download/versions/"
  name "Soundtoys DevilLoc"
  desc "Audio level destroyer with vintage vibe"
  homepage "https://www.soundtoys.com/product/devil-loc/"

  livecheck do
    url "https://storage.googleapis.com/soundtoys-download/download.json"
    strategy :json do |json|
      json.map do |key, item|
        next unless key.match?("DevilLoc#{version.major}_Mac")

        item["fullversion"]
      end
    end
  end

  depends_on :macos

  pkg "Install Devil-Loc.pkg"

  # The Soundtoys application bundles the install of the iLok License Manager
  # this is often shared with other applications and should not be removed
  # it also isn't removed by the Soundtoys uninstaller
  # pkgutil: "com.paceap.pkg.*"
  # launchctl: "com.paceap.eden.*"
  # delete: "/usr/local/bin/iloktool"
  uninstall pkgutil: "com.soundtoys.DevilLoc#{version.major}.*"

  zap trash: "~/Library/Saved Application State/com.soundtoys.RemoveSoundtoys.savedState"
end
