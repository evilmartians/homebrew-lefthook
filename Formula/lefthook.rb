# This file was generated by GoReleaser. DO NOT EDIT.
class Lefthook < Formula
  desc "Lefthook a single dependency-free binary to manage all your git hooks that works with any language in any environment, and in all common team workflows"
  homepage "https://github.com/Arkweid/lefthook"
  url "https://github.com/Arkweid/lefthook/releases/download/v0.5.2/lefthook_0.5.2_MacOS_x86_64.tar.gz"
  version "0.5.2"
  sha256 "1003f3195dd4c1c4f88e3ac6d97ef893b85046ecbefd35f58ab72393007dd680"

  def install
    bin.install "lefthook"
  end

  test do
    system "#{bin}/lefthook version"
  end
end