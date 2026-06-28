cask "neuraldsp-fortin-nameless-suite-x" do
  version "1.0.1"
  sha256 "6b249664cf7bef16299af8e9e7f01a307791e594487172bec3a407f7220abb86"

  url "https://downloads.neuraldsp.com/file/fortin-nameless-x/v_#{version}/mac/Fortin%20Nameless%20Suite%20X%20v#{version}.pkg"
  name "Neural DSP Fortin Nameless Suite X"
  desc "Legendary amplifier replicated in a beautiful plugin"
  homepage "https://neuraldsp.com/plugins/fortin-nameless-suite"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Fortin Nameless Suite X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.FortinNamelessSuiteX*"

  zap trash: ["~/Library/Application Support/Neural DSP/Fortin Nameless Suite X",
              "/Library/Audio/Presets/Neural DSP/Fortin Nameless Suite X/User"]
end
