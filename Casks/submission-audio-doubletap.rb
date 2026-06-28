cask "submission-audio-doubletap" do
  version "1.0.4"
  sha256 "924ff7dce336318490cf142a386036344e2455fac853f0583f54c60d056f8087"

  url "https://downloads.submissionaudio.com/DoubleTap/DoubleTap+#{version}/DoubleTap+#{version}.pkg"
  name "SubMission Audio DoubleTap"
  desc "2-stage multiband dynamics processor"
  homepage "https://www.submissionaudio.com/products/doubletap"

  depends_on cask: "ilok-license-manager"
  depends_on :macos

  pkg "DoubleTap #{version}.pkg"

  uninstall pkgutil: "com.submissionaudio.doubletap.*"

  zap trash: [
    "~/Library/Application Support/SubMission Audio/DoubleTap",
    "~/Library/Audio/Presets/SubMission Audio/DoubleTap",
  ]
end
