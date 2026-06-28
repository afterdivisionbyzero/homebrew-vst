cask "submission-audio-lockon-free" do
  version "1.0.4"
  sha256 "86c0bdd51819bd6e81340f395d1704e5344f9623dc1665ffd268bc24cfd30695"

  url "https://downloads.submissionaudio.com/LockOn%20Free/LockOn%20Free+#{version}/LockOn%20Free+#{version}.pkg"
  name "SubMission Audio LockOn Free"
  desc "Ultra-precision guitar & bass tuner AU/VST3/AAX plugin by SubMission Audio"
  homepage "https://www.submissionaudio.com/products/lockon"

  depends_on cask: "ilok-license-manager"
  depends_on :macos

  pkg "LockOn Free #{version}.pkg"

  uninstall pkgutil: "com.submissionaudio.lockon.*"

  zap trash: [
    "~/Library/Application Support/SubMission Audio/LockOn",
    "~/Library/Audio/Presets/SubMission Audio/LockOn",
  ]
end
