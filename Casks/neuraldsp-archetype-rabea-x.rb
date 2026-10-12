cask "neuraldsp-archetype-rabea-x" do
  version "1.1.0"
  sha256 "22fe5546926a9e13ca2b82c6205fbb2a51f0a4103fafe4268245675d4b626f84"

  url "https://downloads.neuraldsp.com/file/archetype-rabea-x-installers/v_#{version}/mac/Archetype%20Rabea%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Rabea X"
  desc "Bringing world-class synth sounds to the modern guitarist"
  homepage "https://neuraldsp.com/plugins/archetype-rabea"

  depends_on cask: "ilok-license-manager"
  depends_on macos: :ventura

  pkg "Archetype Rabea X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeRabeaX*"

  zap trash: ["~/Library/Application Support/Neural DSP/Archetype Rabea X",
              "/Library/Audio/Presets/Neural DSP/Archetype Rabea X/User"]
end
