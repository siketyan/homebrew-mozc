cask "mozc" do
  arch arm: "arm64", intel: "intel64"

  version "2.30.5490.100"
  sha256 arm:   "97f345ace54ee14ff01059c2138dcc09b715e6212b6919f0e54db128dddcd582",
         intel: "7e68d80dad309839c22380997b18d5ef2703e1e58ba6444307cb7be386336ace"

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
