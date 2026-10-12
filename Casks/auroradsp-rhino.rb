require "download_strategy"

class Http1DownloadStrategy < CurlDownloadStrategy
  def _curl_args
    super + ["--http1.1"]
  end

  def _curl_opts
    user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) " \
                 "AppleWebKit/537.36 (KHTML, like Gecko) " \
                 "Chrome/140.0.0.0 Safari/537.36"
    super.merge(user_agent: user_agent)
  end
end

cask "auroradsp-rhino" do
  version "1.7.5"
  sha256 "6bea6d2929f464fdd96d60fec180f1ffa7e6bb6e72d13fca45f7b1c53a1015fd"

  url "https://www.auroradsp.com/files/aurora/Rhino_#{version.major}.#{version.minor}.pkg",
      using: Http1DownloadStrategy
  name "Aurora DSP Rhino"
  desc "Massive Guitar Plugin"
  homepage "https://auroradsp.com/plugins/rhino-guitar-plugin"

  depends_on macos: :ventura

  pkg "Rhino_#{version.major}.#{version.minor}.pkg"

  uninstall pkgutil: [
    "AAX.com.AuroraDSP.Rhino",
    "APP.com.AuroraDSP.Rhino",
    "AU.com.AuroraDSP.Rhino",
    "VST3.com.AuroraDSP.Rhino",
  ]
end
