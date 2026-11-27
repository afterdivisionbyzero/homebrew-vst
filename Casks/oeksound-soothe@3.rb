cask "oeksound-soothe@3" do
  version "1.0.6"
  sha256 "1b372d1d6ce71b1a42bc885ccbd1dfb658bed259e231346203df50680687326a"

  url "https://oeksound.ams3.cdn.digitaloceanspaces.com/soothe3_v#{version}_macos.pkg"
  name "oeksound Soothe 3"
  desc "Soothe harshness"
  homepage "https://oeksound.com/plugins/soothe3/"

  depends_on cask: "ilok-license-manager"
  depends_on :macos

  pkg "soothe3_v#{version}_macos.pkg"

  uninstall pkgutil: "com.oeksound.soothe3*"
end
