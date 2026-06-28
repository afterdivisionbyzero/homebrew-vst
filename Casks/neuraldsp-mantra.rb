cask "neuraldsp-mantra" do
  version "1.0.1"
  sha256 "fe8aad38ca0ee386e4157e1ea4f4006c20705168be246e8b138d6a25d0efedab"

  url "https://downloads.neuraldsp.com/file/mantra-installers/v_#{version}/mac/Mantra%20v#{version}.pkg"
  name "Neural DSP Mantra"
  desc "All the essential tools for modern vocal production in one plugin"
  homepage "https://neuraldsp.com/plugins/mantra"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Mantra v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.Mantra*"

  zap trash: ["~/Library/Application Support/Neural DSP/Mantra",
              "/Library/Audio/Presets/Neural DSP/Mantra/User"]
end
