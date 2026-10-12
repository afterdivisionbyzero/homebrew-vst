cask "neuraldsp-archetype-misha-mansoor-x" do
  version "1.1.0"
  sha256 "d3c61add902d4d73ab2b0078e90bd82e0cfeaf27b1c255d4421621f04b9bc4a1"

  url "https://downloads.neuraldsp.com/file/archetype-misha-mansoor-x-installers/v_#{version}/mac/Archetype%20Misha%20Mansoor%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Misha Mansoor X"
  desc "Signature guitar plugin by Misha Mansoor"
  homepage "https://neuraldsp.com/plugins/archetype-misha-mansoor"

  depends_on cask: "ilok-license-manager"
  depends_on macos: :ventura

  pkg "Archetype Misha Mansoor X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeMishaMansoorX*"

  zap trash: [
    "/Library/Audio/Presets/Neural DSP/Archetype Misha Mansoor X/User",
    "~/Library/Application Support/Neural DSP/Archetype Misha Mansoor X",
  ]
end
