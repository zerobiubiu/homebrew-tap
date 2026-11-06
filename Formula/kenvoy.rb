# 该文件由 .github/scripts/channels/manifests.py 生成，请勿手工修改。
class Kenvoy < Formula
  desc "Kenvoy turns TypeScript/JSX declarations into pages, controlled APIs and SQLite-backed apps"
  homepage "https://github.com/zerobiubiu/kenvoy"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerobiubiu/kenvoy/releases/download/v0.5.0/kenvoy-0.5.0-macos-ARM64.zip"
      sha256 "6bc52a48dbbee49d3b5088dbc3b8f2225586fd541f8854cd359b0e9a8629dbd6"
    end
    on_intel do
      url "https://github.com/zerobiubiu/kenvoy/releases/download/v0.5.0/kenvoy-0.5.0-macos-x86_64.zip"
      sha256 "352e5cb38da612b792575060c4afd0cd6bdebdcd5d950b0c2bca11afb7ec7c62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zerobiubiu/kenvoy/releases/download/v0.5.0/kenvoy-0.5.0-linux-ARM64.zip"
      sha256 "b7b9a1085d3da54adaf5f9515fb154255df7b725ef4f6a9644ae2c3b65a5874e"
    end
    on_intel do
      url "https://github.com/zerobiubiu/kenvoy/releases/download/v0.5.0/kenvoy-0.5.0-linux-x86_64.zip"
      sha256 "b65bc988e14d7ffd8296491dcd2b897be799dc841b8a96fb90e70aacc7459446"
    end
  end

  def install
    bin.install "kenvoy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kenvoy --version")
  end
end
