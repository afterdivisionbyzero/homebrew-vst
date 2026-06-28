cask "neuraldsp-archetype-gojira-x" do
  version "1.0.2"
  sha256 "9ddf4a388d1711ec6c1e13a19b51473d3b77b646699dc386614c6fe6a227bfe5"

  url "https://downloads.neuraldsp.com/file/archetype-gojira-x/v_#{version}/mac/Archetype%20Gojira%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Gojira X"
  desc "Signature guitar plugin by Gojira's Joe Duplantier"
  homepage "https://neuraldsp.com/plugins/archetype-gojira"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Archetype Gojira X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeGojiraX*"

  zap trash: [
    "/Library/Audio/Presets/Neural DSP/Archetype Gojira X/User",
    "~/Library/Application Support/Neural DSP/Archetype Gojira X",
  ]
end
