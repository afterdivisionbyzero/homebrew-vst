cask "ua-connect" do
  version :latest
  sha256 :no_check

  url "https://www.uaudio.com/apps/uaconnect/mac/installer"
  name "UA Connect"
  desc "Universal Audio Connect application"
  homepage "https://www.uaudio.com/apps/uaconnect/mac/installer"

  depends_on :macos

  app "UA Connect.app"

  zap trash: "~/Library/Application Support/Universal Audio"
end
