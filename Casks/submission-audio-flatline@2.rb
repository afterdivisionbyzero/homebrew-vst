cask "submission-audio-flatline@2" do
  version "2.0.6"
  sha256 "e634504c3618cd5252ea07f9e123be6bfbf53370e45486e9002148a732c196e4"

  url "https://downloads.submissionaudio.com/Flatline/Flatline+#{version}/Flatline+#{version}.pkg"
  name "SubMission Audio Flatline 2"
  desc "Clipper, limiter and intelligent maximizer"
  homepage "https://www.submissionaudio.com/products/flatline"

  depends_on cask: "ilok-license-manager"
  depends_on :macos

  pkg "Flatline #{version}.pkg"

  uninstall pkgutil: "com.submissionaudio.flatline2.*"
end
