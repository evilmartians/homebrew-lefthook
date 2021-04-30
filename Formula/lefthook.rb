class Lefthook < Formula
  desc "Fast and powerful Git hooks manager for any type of projects"
  homepage "https://github.com/evilmartians/lefthook"
  url "https://github.com/evilmartians/lefthook/archive/refs/tags/v0.7.4.tar.gz"
  sha256 "f4247621abd7ee9860d8c18d6357077978f09e439bde9ff16462e3e743a93ee9"
  license "MIT"

  bottle do
    root_url "https://github.com/evilmartians/homebrew-lefthook/releases/download/lefthook-0.7.3"
    sha256 cellar: :any_skip_relocation, catalina:     "e4444f087613af0c1aef32c442c4597b4da96aa0c04c8164e3df5ad88348178d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d76690af924424b44d124b8ff19604d3ccda9aa5a47dadbf5164e4020651b683"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/lefthook", "-h"
  end
end
