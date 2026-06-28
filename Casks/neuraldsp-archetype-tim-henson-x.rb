cask "neuraldsp-archetype-tim-henson-x" do
  version "1.0.1"
  sha256 "bbcb6dabde8de931be9782d20da4f57ba2dd9de20744f12f278db4eecf407c32"

  url "https://downloads.neuraldsp.com/file/archetype-tim-henson-x/v_#{version}/mac/Archetype%20Tim%20Henson%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Tim Henson X"
  desc "Signature guitar plugin by Tim Henson"
  homepage "https://neuraldsp.com/plugins/archetype-tim-henson"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Archetype Tim Henson X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeTimHensonX*"

  zap trash: ["~/Library/Application Support/Neural DSP/Archetype Tim Henson X",
              "/Library/Audio/Presets/Neural DSP/Archetype Tim Henson X/User"]
end
