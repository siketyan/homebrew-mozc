cask "mozc@pre" do
  arch arm: "arm64", intel: "intel64"

  version "2.30.5520.100"
  sha256 arm:   "291287a27331334ab6f1333cc1eb81e30e141a6a6abeb1a2a8f1b66d131e9503",
         intel: "076d67777d1e14f48096015aa769bf63e561379d10daf99bbaba08090358a624"

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
