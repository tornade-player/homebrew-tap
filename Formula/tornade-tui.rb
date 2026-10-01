class TornadeTui < Formula
  desc "Terminal UI FLAC and lossless audio player"
  homepage "https://github.com/tornade-player/tornade-tui"
  version "1.9.0"
  license "MIT"

  on_macos do
    url "https://github.com/tornade-player/tornade-tui/releases/download/v1.9.0/tornade-tui-v1.9.0-macos-universal.tar.gz"
    sha256 "c4e6f330eb9356ca4ab449cb3bb17439557d0c51cc17a21e7f4d93b7e2d0358f"
  end

  on_linux do
    url "https://github.com/tornade-player/tornade-tui/releases/download/v1.9.0/tornade-tui-v1.9.0-linux-x86_64.tar.gz"
    sha256 "1b7f16908bb3373ce73c7ccb3da899fccaaf9aa7af42293aaed1d5ecedcf8631"
  end

  def install
    bin.install "tornade-tui"
  end

  test do
    assert_predicate bin/"tornade-tui", :exist?
    assert_predicate bin/"tornade-tui", :executable?
  end
end
