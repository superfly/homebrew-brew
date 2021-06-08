# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.223"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.223/flyctl_0.0.223_macOS_x86_64.tar.gz"
      sha256 "a2c27a9fb4f0dde50521c89bd07c87c740b22716bfd60183c39134bb6a897565"
    end
    if Hardware::CPU.arm?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.223/flyctl_0.0.223_macOS_arm64.tar.gz"
      sha256 "38ef393ec3a30c4330baaa456c3c30924f2b1830367e39e620dec94e65149de2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.223/flyctl_0.0.223_Linux_x86_64.tar.gz"
      sha256 "a0aff7cb31d54a961d9765d7562a4a490df99c2e0d032cfd05df304b5e469b97"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.223/flyctl_0.0.223_Linux_arm64.tar.gz"
      sha256 "0f6cc1532fc4afe14576d914b5956f59b32860d7681deac5f9640e40a73fdcb7"
    end
  end

  def install
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
