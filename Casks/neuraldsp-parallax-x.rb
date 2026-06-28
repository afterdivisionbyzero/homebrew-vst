cask "neuraldsp-parallax-x" do
  version "1.0.0"
  sha256 "4cb60f282859f652968247d19f29148cee14bacffe3ef622d72809926532deda"

  url "https://downloads.neuraldsp.com/file/parallax-x-installers/v_#{version}/mac/Parallax%20X%20v#{version}.pkg"
  name "Neural DSP Parallax X"
  desc "Everything you need to design the ultimate bass tone"
  homepage "https://neuraldsp.com/plugins/parallax"

  depends_on macos: :ventura
  depends_on cask: "ilok-license-manager"

  pkg "Parallax X v#{version}.pkg"

  uninstall pkgutil: "com.neuraldsp.ParallaxX*"

  zap trash: ["~/Library/Application Support/Neural DSP/Parallax X",
              "/Library/Audio/Presets/Neural DSP/Parallax X/User"]
end
