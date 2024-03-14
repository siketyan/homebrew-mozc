cask "mozc" do
  arch arm: "arm64", intel: "intel64"

  version "2.29.5374.102"
  sha256 arm:   "2e5f153cb5758390e3711dddc4ee21e1d09dd85aef3a2bcbfddb9406b8dc7215",
         intel: "f907d2309825fc9a2fab0d103e36bae00fc27f4703b5649e882fb1558a43a284"

  url "https://github.com/siketyan/homebrew-mozc/releases/download/#{version}/Mozc_#{arch}.pkg.zip"

  name "Mozc"
  desc "Japanese Input Method Editor designed for multi-platform"
  homepage "https://github.com/google/mozc"

  auto_updates false
  depends_on macos: ">= :big_sur"

  pkg "Mozc.pkg"

  uninstall delete: [
    "/Library/Input Methods/Mozc.app",
    "/Library/LaunchAgents/org.mozc.inputmethod.Japanese.Converter.plist",
    "/Library/LaunchAgents/org.mozc.inputmethod.Japanese.Renderer.plist",
    "/Applications/Mozc",
  ]
end
