cask "mozc" do
  arch arm: "arm64", intel: "intel64"

  version "2.29.5374.100"
  sha256 arm:   "42572114861c50e59a137242d46a72f21ee61230324580da59c5bb836356305f",
         intel: "80a28734df4eb94957d17bf238bea9efb340e38a4834421aa197904c4c450c89"

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
