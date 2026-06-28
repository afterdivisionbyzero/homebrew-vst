cask "fractal-cab-lab-4" do
  version "1p00p05"
  sha256 "432275af36ad237aab867607ad1fae79d509f11713eb182424c044b1d6c97840"

  url "https://www.fractalaudio.com/downloads/Cab-Lab-4/Cab-Lab-4-OSX-v#{version}.dmg"
  name "Cab-Lab 4 IR Mixer"
  desc "4-channel impulse-response mixer with DynaCab technology"
  homepage "https://www.fractalaudio.com/cab-lab-4/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)+)\s*–/i)
    strategy :page_match do |page, regex|
      next unless (m = page.match(regex))

      m[1].tr(".", "p")
    end
  end

  depends_on :macos

  pkg "Cab-Lab 4 Installer v#{version}.pkg"

  uninstall pkgutil: "com.fractalaudio.cab-lab-4"

  zap trash: [
    "/Library/Audio/Plug-Ins/Components/Cab-Lab 4.component",
    "/Library/Audio/Plug-Ins/VST3/Cab-Lab 4.vst3",
    "~/Library/Application Support/Fractal Audio/Cab-Lab 4",
    "~/Library/Preferences/com.fractalaudio.Cab-Lab-4.plist",
    "~/Library/Saved Application State/com.fractalaudio.Cab-Lab-4.savedState",
  ]
end
