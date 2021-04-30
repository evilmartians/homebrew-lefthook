class Lefthook < Formula
  desc "Fast and powerful Git hooks manager for any type of projects"
  homepage "https://github.com/evilmartians/lefthook"
  url "https://github.com/evilmartians/lefthook/archive/refs/tags/v0.7.4.tar.gz"
  sha256 "f4247621abd7ee9860d8c18d6357077978f09e439bde9ff16462e3e743a93ee9"
  license "MIT"

  bottle do
    root_url "https://github.com/evilmartians/homebrew-lefthook/releases/download/lefthook-0.7.4"
    sha256 cellar: :any_skip_relocation, catalina:     "88a4c54f3de5c09297fda72c17a29dce639d0bad329d01d3520c2b732ad8a308"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cf421219ec181676fd4b6d44534eaa636b6aebfd8de0759ad0d19058ffcc1d21"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/lefthook", "-h"
  end
end
