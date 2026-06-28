cask "focusrite-red-plugin-suite" do
  version "2.0.4"
  sha256 :no_check

  url "https://fael-downloads-prod.focusrite.com/customer/prod/downloads/red-plug-in-suite-installer.pkg.zip"
  name "Focusrite Red Plug-in Suite"
  desc "Red 2 EQ and Red 3 Compressor plug-ins"
  homepage "https://downloads.focusrite.com/focusrite/red-plugin-suite"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(/Red Plug[ -]?in Suite[^\d]*(\d+(?:\.\d+)+)/i).map(&:first)
    end
  end

  depends_on :macos

  pkg "Red Plug-In Suite Installer.pkg"

  uninstall pkgutil: [
    "com.focusrite.aax.pkg.RedPluginSuite",
    "com.focusrite.au.pkg.RedPluginSuite",
    "com.focusrite.au.pkg.RedPluginSuitePresets",
    "com.focusrite.vst3.pkg.RedPluginSuite",
    "com.focusrite.vst3.pkg.RedPluginSuitePresets",
  ]

  zap trash: [
    "/Library/Audio/Plug-Ins/VST3/Focusrite Red 2 EQ.vst3",
    "/Library/Audio/Plug-Ins/VST3/Focusrite Red 3 Compressor.vst3",
    "~/Library/Preferences/com.focusrite.*.plist",
  ]
end
