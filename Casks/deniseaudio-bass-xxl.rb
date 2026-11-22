cask "deniseaudio-bass-xxl" do
  version "1.3"
  sha256 :no_check

  url "https://deniseaudio.s3.amazonaws.com/Bass+XXL+Denise+Audio+Mac.zip"
  name "Bass XXL"
  desc "Bass enhancement plugin by Denise Audio"
  homepage "https://www.deniseaudio.com/"

  depends_on :macos

  pkg "Denise Audio - Bass XXL - Mac 1.3.pkg"

  uninstall pkgutil: "com.deniseaudio.BassXXL.*"
end
