cask "oeksound-spiff" do
  version "1.4.4"
  sha256 "5f3149bbe3157969596537538bf3e1b4d4389250449782e700b1a613a10a04c8"

  url "https://oeksound.ams3.cdn.digitaloceanspaces.com/spiff_v#{version.no_dots}_Mac.pkg",
      verified: "oeksound.ams3.cdn.digitaloceanspaces.com/"
  name "oeksound Spiff"
  desc "Adaptive transient processor plugin"
  homepage "https://oeksound.com/plugins/spiff/"

  depends_on cask: "ilok-license-manager"
  depends_on :macos

  pkg "spiff_v#{version.no_dots}_Mac.pkg"

  uninstall pkgutil: "com.oeksound.spiff*"
end
