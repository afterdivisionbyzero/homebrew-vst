cask "mixwave-manuel-gardner-fernandes" do
  version "1.0.0"
  sha256 "985a4c5f76bf75fcdce811ecdd0f3fa5b5144538ade13b7a04d758829358bab8"

  url "https://mixwave-downloads.s3.us-east-1.amazonaws.com/plugins/Manuel-Gardner-Fernandes/MixWave+Manuel+Gardner+Fernandes+v#{version}.pkg",
      verified: "mixwave-downloads.s3.us-east-1.amazonaws.com/"
  name "MixWave: Manuel Gardner Fernandes"
  desc "Versatile and expressive, capturing the essence of Manuel's evolving sound"
  homepage "https://mixwave.com/products/manuel-gardner-fernandes"

  depends_on cask: "ilok-license-manager"
  depends_on :macos

  pkg "MixWave+Manuel+Gardner+Fernandes+v#{version}.pkg"

  uninstall pkgutil: "com.mixwave.pkg.MixWaveManuelGardnerFernandes*"
end
