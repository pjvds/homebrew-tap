# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tunl < Formula
  desc "With Tunl you can expose services on your localhost to the public via a fast and secure tunnel."
  homepage "https://tunl.es/"
  version "0.31.0"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pjvds/tunl/releases/download/0.31.0/tunl_0.31.0_Darwin_x86_64.tar.gz"
    sha256 "b3ec36bd5127715183e115738aaeb5f39743c724116224c20d2382c7ceb66701"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pjvds/tunl/releases/download/0.31.0/tunl_0.31.0_Linux_x86_64.tar.gz"
    sha256 "d1fface0c8a921be276a4c50be6ac21e75368d96dc801fe5d2662c9a791fa241"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/pjvds/tunl/releases/download/0.31.0/tunl_0.31.0_Linux_armv6.tar.gz"
    sha256 "ce4a1ccb96d3ef130f2b3b5dca3579461e5dcab2b6f7d02e726e4dc4b8cef63f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/pjvds/tunl/releases/download/0.31.0/tunl_0.31.0_Linux_arm64.tar.gz"
    sha256 "e871a4226995b821d097c67eb44de545c581b110f97c28df990f5ea58e957e70"
  end

  def install
    bin.install "tunl"
  end
end
