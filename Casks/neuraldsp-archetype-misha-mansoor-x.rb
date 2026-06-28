cask "neuraldsp-archetype-misha-mansoor-x" do
  version "1.0.1"
  sha256 "d00887d0786901edfa013df3be7c6e13e5d9dbceb6e0edc8c84bc3a85cf1ad21"

  url "https://downloads.neuraldsp.com/file/archetype-misha-mansoor-x-installers/v_#{version}/mac/Archetype%20Misha%20Mansoor%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Misha Mansoor X"
  desc "Signature guitar plugin by Misha Mansoor"
  homepage "https://neuraldsp.com/plugins/archetype-misha-mansoor"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Archetype Misha Mansoor X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeMishaMansoorX*"

  zap trash: [
    "/Library/Audio/Presets/Neural DSP/Archetype Misha Mansoor X/User",
    "~/Library/Application Support/Neural DSP/Archetype Misha Mansoor X",
  ]
end
