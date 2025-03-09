cask "mozc" do
  arch arm: "arm64", intel: "intel64"

  version "2.31.5712.102"
  sha256 arm:   "10ff644584f46c46c8c45aa0c24301a24eb5672ca30d962527c2aaaae9b9f8a0",
         intel: "2575c7866ffe7373b448751f17cdc62f90b15a6a134ae7f3138ab24df57b18ca"

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
