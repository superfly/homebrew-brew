# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.206"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.206/flyctl_0.0.206_macOS_x86_64.tar.gz"
    sha256 "e635d55a8f73c37859428cca82c41f5d13673bc89fa365f9ae5eb0837393a7c3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.206/flyctl_0.0.206_macOS_arm64.tar.gz"
    sha256 "92ab72af0ab6eb997090d3053d10b374fa35851989b6d2fe4951bd3facbf170e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.206/flyctl_0.0.206_Linux_x86_64.tar.gz"
    sha256 "225d784f91d70d55ee68c06199377a6d96724202b01c242248c90d16b8b6a7cc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.206/flyctl_0.0.206_Linux_arm64.tar.gz"
    sha256 "98f50bbc002ddb249c04999c10273891b7360b8d53b3f80f15fb9aacb073f566"
  end

  def install
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
