cask "mixwave-spiritbox-mike-stringer" do
  version "1.0.3"
  sha256 "f75967746ffdab309a27129dc745c280136a895d052345dec3ad086f380c3d93"

  url "https://mixwave-downloads.s3.us-east-1.amazonaws.com/plugins/Spiritbox-Mike-Stringer/MixWave+Spiritbox+-+Mike+Stringer+v#{version}.pkg",
      verified: "mixwave-downloads.s3.us-east-1.amazonaws.com/"
  name "MixWave: Mike Stringer"
  desc "Heaviest plugin from the guitarist of Spiritbox: Mike Stringer"
  homepage "https://mixwave.com/products/spiritbox-mike-stringer"

  depends_on cask: "ilok-license-manager"
  depends_on :macos

  pkg "MixWave+Spiritbox+-+Mike+Stringer+v#{version}.pkg"

  uninstall pkgutil: "net.mixwave.pkg.MixWaveSpiritbox-MikeStringer*"
end
