# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.44"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.44/flyctl_0.0.44_macOS_x86_64.tar.gz"
    sha256 "1ab59f3c96c287af17c24e977ff2874041f140f85170628d9923610ef1409054"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.44/flyctl_0.0.44_Linux_x86_64.tar.gz"
      sha256 "43c4d2f05661879ac0a87744c4bb91eda515bc26ac5d48bfbad8ad33baceeb13"
    end
  end

  def install
    bin.install "flyctl"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
