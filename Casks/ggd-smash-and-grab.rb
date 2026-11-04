cask "ggd-smash-and-grab" do
  version "2.3.4"
  sha256 "f0ffb5edb7dc901e230006b53daeb1c525da451dadd874c8cf66de3ec44d09c8"

  url "https://downloads.getgooddrums.com/files/SmashGrab/#{version}/GGD+Smash+And+Grab+v#{version.major}.pkg"
  name "GGD Smash & Grab"
  desc "Drum processing plugin by GetGood Drums"
  homepage "https://www.getgooddrums.com/"

  depends_on :macos

  pkg "GGD+Smash+And+Grab+v#{version.major}.pkg"

  uninstall pkgutil: "com.GGD.pkg.SmashAndGrabv#{version}*"

  zap :not_required
end
