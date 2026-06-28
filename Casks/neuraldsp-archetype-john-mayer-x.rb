cask "neuraldsp-archetype-john-mayer-x" do
  version "1.1.0"
  sha256 "1bb979fd95dc03006bedd5477e00945ee6409ea6a18af3fb2209a04d97f8081d"

  url "https://downloads.neuraldsp.com/file/archetype-john-mayer-x-installers/v_#{version}/mac/Archetype%20John%20Mayer%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: John Mayer X"
  desc "Signature guitar plugin by John Mayer"
  homepage "https://neuraldsp.com/plugins/archetype-john-mayer"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Archetype John Mayer X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeJohnMayerX*"

  zap trash: [
    "/Library/Audio/Presets/Neural DSP/Archetype John Mayer X/User",
    "~/Library/Application Support/Neural DSP/Archetype John Mayer X",
  ]
end
