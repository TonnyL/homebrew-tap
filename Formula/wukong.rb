class Wukong < Formula
  desc "A command-line tool for browsing GitHub trending repositories and developers written by Go."
  homepage "https://github.com/TonnyL/Wukong/"
  version "v0.1.0-alpha02"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/TonnyL/Wukong/releases/download/v0.1.0-alpha02/wukong-macos.tar.gz"
    sha256 "446d2cd7f185778b020ae55f721c7b2edb4bf4b919706733ab8f3d3d9188e523"
  elsif OS.linux?
    url "https://github.com/TonnyL/Wukong/releases/download/v0.1.0-alpha02/wukong-linux.tar.gz"
    sha256 "cc4df15ab5e3cf757ae9aa79c2d9d6793947cf4a27cc219ca6c1c6f0c9d6c2b9"
  end

  def install
    bin.install "wukong"
  end

  test do
     system "#{bin}/wukong", "--help"
  end
end
