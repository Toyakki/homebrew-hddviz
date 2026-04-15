class Hddviz < Formula
  desc "CLI tool to visualize disk usage"
  homepage "https://github.com/Toyakki/hddviz"
  url "https://github.com/Toyakki/hddviz/releases/download/v0.1.5/hddviz_0.1.5_darwin_arm64.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "GPL-3.0-only"
  version "0.1.5"

  def install
    bin.install "hddviz"
  end

  test do
    output = shell_output("#{bin}/hddviz -root #{testpath}/does-not-exist 2>&1", 1)
    assert_match "Cannot find the path", output
  end
end