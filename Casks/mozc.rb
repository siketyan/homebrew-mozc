cask "mozc" do
  arch arm: "arm64", intel: "intel64"

  version "2.29.5448.100"
  sha256 arm:   "728646c1900c702818790832c78d1d09589c7694e175595f05d8d005704989e7",
         intel: "62ee79f7555b7249f0d772e9e921431fe3177b5f11528583ab355e2a547c8a32"

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
