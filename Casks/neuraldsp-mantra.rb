cask "neuraldsp-mantra" do
  version "1.2.0"
  sha256 "8937685e3872a2ccf88d6c9c558c54917e6a064a171f2da03f71ec5b43271243"

  url "https://downloads.neuraldsp.com/file/mantra-installers/v_#{version}/mac/Mantra%20v#{version}.pkg"
  name "Neural DSP Mantra"
  desc "All the essential tools for modern vocal production in one plugin"
  homepage "https://neuraldsp.com/plugins/mantra"

  depends_on cask: "ilok-license-manager"
  depends_on macos: :ventura

  pkg "Mantra v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.Mantra*"

  zap trash: ["~/Library/Application Support/Neural DSP/Mantra",
              "/Library/Audio/Presets/Neural DSP/Mantra/User"]
end
