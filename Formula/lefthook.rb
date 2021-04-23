class Lefthook < Formula
  desc "Fast and powerful Git hooks manager for any type of projects"
  homepage "https://github.com/evilmartians/lefthook"
  url "https://github.com/evilmartians/lefthook/archive/refs/tags/v0.7.3.tar.gz"
  sha256 "643bb3d2a1b67d865285a9cadcad11f2588ba284570ab9924c8e3d2e902301ca"
  license "MIT"

  bottle do
    root_url "https://github.com/evilmartians/homebrew-lefthook/releases/download/lefthook-0.7.2"
    sha256 cellar: :any_skip_relocation, catalina:     "9261e13f72f2c5c95df9b79ae303fa08bdfd64ba48864233899d958c50cc817c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "554f57ca40a7479395e1f71a10e290b2c3d1c1e50f0ed64042b742b5a6fdc5aa"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/lefthook", "-h"
  end
end
