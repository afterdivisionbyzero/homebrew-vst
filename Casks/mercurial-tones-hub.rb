cask "mercurial-tones-hub" do
  version :latest
  sha256 :no_check

  url "https://downloads.mercurialtones.com/software-center/latest/Mercurial-Tones-Hub-macOS.dmg"
  name "Mercurial Tones Hub"
  desc "Plugin manager and sound library for Mercurial Tones"
  homepage "https://shop.mercurialtones.com/pages/mercurial-tones-hub"

  depends_on :macos

  app "Mercurial Tones Hub.app"
end
