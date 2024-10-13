cask "mozc@pre" do
  arch arm: "arm64", intel: "intel64"

  version "2.30.5618.100"
  sha256 arm:   "12a1d20e48167a6b2720137d1d6a7f6ecf3908c1e61c8637135ae00b8e903dc7",
         intel: "c12b0b4b3c96282c85176a6a2e3a9e8eed5175143ee7c3a9f1822844b9005fdf"

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
