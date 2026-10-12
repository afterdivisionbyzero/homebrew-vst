cask "neuraldsp-archetype-tim-henson-x" do
  version "1.1.0"
  sha256 "ca23d94ad4131574d2135e08a4e20e4bb13820f244ed839ffd399ea099de5d9b"

  url "https://downloads.neuraldsp.com/file/archetype-tim-henson-x/v_#{version}/mac/Archetype%20Tim%20Henson%20X%20v#{version}.pkg"
  name "Neural DSP Archetype: Tim Henson X"
  desc "Signature guitar plugin by Tim Henson"
  homepage "https://neuraldsp.com/plugins/archetype-tim-henson"

  depends_on cask: "ilok-license-manager"
  depends_on macos: :ventura

  pkg "Archetype Tim Henson X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ArchetypeTimHensonX*"

  zap trash: ["~/Library/Application Support/Neural DSP/Archetype Tim Henson X",
              "/Library/Audio/Presets/Neural DSP/Archetype Tim Henson X/User"]
end
