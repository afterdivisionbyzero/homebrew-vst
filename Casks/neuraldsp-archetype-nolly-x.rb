cask "neuraldsp-archetype-nolly-x" do
  version "1.0.2"
  sha256 "f6cb49e1702a374b841e0c2b74005d735e28109a2879b8c2511be61f8ebf2832"

  url "https://downloads.neuraldsp.com/file/archetype-nolly-x-installers/v_#{version}/mac/Archetype%20Nolly%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Nolly X"
  desc "Signature guitar plugin by Nolly"
  homepage "https://neuraldsp.com/plugins/archetype-nolly"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Archetype Nolly X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeNollyX*"

  zap trash: ["~/Library/Application Support/Neural DSP/Archetype Nolly X",
              "/Library/Audio/Presets/Neural DSP/Archetype Nolly X/User"]
end
