class Lefthook < Formula
  desc "Fast and powerful Git hooks manager for any type of projects"
  homepage "https://github.com/evilmartians/lefthook"
  url "https://github.com/evilmartians/lefthook/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "a662015ba6ed42dda83b634995363d1d68ac6e4c2c5e1a9582735380cef32524"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/lefthook", "-h"
  end
end
