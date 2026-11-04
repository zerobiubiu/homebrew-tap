# 该文件由 .github/scripts/channels/manifests.py 生成，请勿手工修改。
class Kenvoy < Formula
  desc "Kenvoy turns TypeScript/JSX declarations into pages, controlled APIs and SQLite-backed apps"
  homepage "https://github.com/zerobiubiu/kenvoy"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerobiubiu/kenvoy/releases/download/v0.4.4/kenvoy-0.4.4-macos-ARM64.zip"
      sha256 "31ba52ee33601b8563212ebd8a25ff73ea8b47a4efa3b185d5c6e29b3a5856f8"
    end
    on_intel do
      url "https://github.com/zerobiubiu/kenvoy/releases/download/v0.4.4/kenvoy-0.4.4-macos-x86_64.zip"
      sha256 "04fb8de58480dfcece96218186447fdf90468005e785e19bf61efe9124b35e83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zerobiubiu/kenvoy/releases/download/v0.4.4/kenvoy-0.4.4-linux-ARM64.zip"
      sha256 "67235a90ab6443335d06ee8170b7c33022446a1f41beaee00302da40c122dd53"
    end
    on_intel do
      url "https://github.com/zerobiubiu/kenvoy/releases/download/v0.4.4/kenvoy-0.4.4-linux-x86_64.zip"
      sha256 "45b734e49d46bf23a887fa5794fa28bdbd94dfd836b02b86fe154a32a4a17c07"
    end
  end

  def install
    bin.install "kenvoy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kenvoy --version")
  end
end
