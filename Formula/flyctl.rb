# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.81"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.81/flyctl_0.0.81_macOS_x86_64.tar.gz"
    sha256 "60615772d61432cf909b69771e9ab3c939a99f98aa94afb2d73a01be002ed2e7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.81/flyctl_0.0.81_Linux_x86_64.tar.gz"
      sha256 "546981b04328f2d5b7943c448d05cabafe4bbc1557ca45bc9d41aee93e21c445"
    end
  end

  def install
    bin.install "flyctl"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
