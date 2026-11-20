cask "neuraldsp-archetype-plini-x" do
  version "1.0.2"
  sha256 "f13ad88f5f21ac0b92ff41c6cc7b86380b66da034d6902da8f44cd472b6cc93e"

  url "https://downloads.neuraldsp.com/file/archetype-plini-x-installers/v_#{version}/mac/Archetype%20Plini%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Plini X"
  desc "Signature guitar plugin by Plini"
  homepage "https://neuraldsp.com/plugins/archetype-plini"

  depends_on cask: "ilok-license-manager"
  depends_on macos: :ventura

  pkg "Archetype Plini X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypePliniX*"

  zap trash: [
    "/Library/Audio/Presets/Neural DSP/Archetype Plini X/User",
    "~/Library/Application Support/Neural DSP/Archetype Plini X",
  ]
end
