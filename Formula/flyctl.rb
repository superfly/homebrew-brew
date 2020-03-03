# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.98"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.98/flyctl_0.0.98_macOS_x86_64.tar.gz"
    sha256 "177b6409e7badfbad80a864c40687ce68eb280069dd30aa8c526d3dc5ecd3011"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.98/flyctl_0.0.98_Linux_x86_64.tar.gz"
      sha256 "6dbddb27af84ce9d16110420cad4a37a12daf11efe440cf7c4b6631c086b66ed"
    end
  end

  def install
    bin.install "flyctl"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
