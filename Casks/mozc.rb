cask "mozc" do
  arch arm: "arm64", intel: "intel64"

  version "2.29.5268.102"
  sha256 arm:   "fb6a0e2912840737ebd0e34ef5e733c5eb6d38c8a1f394784bcffbd87502af71",
         intel: "4578d3eea085b19c38b4b69b3b70adabfe20515eb04f7262ff7ecce757872d0e"

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
