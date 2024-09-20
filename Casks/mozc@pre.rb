cask "mozc@pre" do
  arch arm: "arm64", intel: "intel64"

  version "2.30.5595.100"
  sha256 arm:   "4750929e30d7cc00da5ed1d309eb2af86f57a18cfaa6c0560a7c1d3c3f471a65",
         intel: "51774b8fa1507cfab5f6cb3eba85d7cd4c3889d687ac6bb47df96740865ba350"

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
