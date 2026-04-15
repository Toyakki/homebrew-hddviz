class Hddviz < Formula
  desc "CLI tool to visualize disk usage"
  homepage "https://github.com/Toyakki/hddviz"
  license "GPL-3.0-only"
  version "0.1.5"
  on_macos do
    url "https://github.com/Toyakki/hddviz/releases/download/v#{version}/hddviz_#{version}_darwin_all.tar.gz",
        verified: "github.com/Toyakki/hddviz/"
    sha256 "2afc88c360377f741766da33f55086296cec3198ed5a385ecc73425f33df42aa"
  end

  def install
    bin.install "hddviz"
  end

  test do
    system "#{bin}/hddviz", "--version"
  end
end