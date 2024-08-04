cask "mozc" do
  arch arm: "arm64", intel: "intel64"

  version "2.30.5544.102"
  sha256 arm:   "8a99b0b8fffaf3fdbedc55308f083042c31767ebdb304fd32587917c29c9b476",
         intel: "a6dd5e9277525c91befeac1ae8b82efd6dee9c9deca4529593bce4132f24693c"

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
