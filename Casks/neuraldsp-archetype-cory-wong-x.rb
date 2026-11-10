cask "neuraldsp-archetype-cory-wong-x" do
  version "1.0.1"
  sha256 "e3eb403d0064dbf8d0c8f263ba8fe6f4c42196e33a340d46684764f74a282d39"

  url "https://downloads.neuraldsp.com/file/archetype-cory-wong-x/v_#{version}/mac/Archetype%20Cory%20Wong%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Cory Wong X"
  desc "Signature guitar plugin by Cory Wong"
  homepage "https://neuraldsp.com/plugins/archetype-cory-wong"

  depends_on cask: "ilok-license-manager"
  depends_on macos: :ventura

  pkg "Archetype Cory Wong X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeCoryWongX*"

  zap trash: [
    "/Library/Audio/Presets/Neural DSP/Archetype Cory Wong X/User",
    "~/Library/Application Support/Neural DSP/Archetype Cory Wong X",
  ]
end
