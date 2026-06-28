cask "neuraldsp-archetype-rabea-x" do
  version "1.0.1"
  sha256 "ec9b4b196b4bb1dfd8ce00c3116604fa6610b1c91545eb8e8dd3aa82523148a1"

  url "https://downloads.neuraldsp.com/file/archetype-rabea-x-installers/v_#{version}/mac/Archetype%20Rabea%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Rabea X"
  desc "Bringing world-class synth sounds to the modern guitarist"
  homepage "https://neuraldsp.com/plugins/archetype-rabea"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Archetype Rabea X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeRabeaX*"

  zap trash: ["~/Library/Application Support/Neural DSP/Archetype Rabea X",
              "/Library/Audio/Presets/Neural DSP/Archetype Rabea X/User"]
end
