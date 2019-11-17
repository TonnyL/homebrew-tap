class Wukong < Formula
  desc "A command-line tool for browsing GitHub trending repositories and developers written by Go."
  homepage "https://github.com/TonnyL/Wukong/"
  version "v0.1.0-alpha01"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/TonnyL/Wukong/releases/download/v0.1.0-alpha01/wukong-macos.tar.gz"
    sha256 "2f508abe6606d5079c0ee54c9a00c12bcf4745537fe7cb4b3997b1172612a5f8"
  elsif OS.linux?
    url "https://github.com/TonnyL/Wukong/releases/download/v0.1.0-alpha01/wukong-linux.tar.gz"
    sha256 "1469a99e8262a4c48fd2eb7543a7ff1bc2f9363519f66dec1566cfc34a7f5e6e"
  end

  def install
    bin.install "wukong"
  end

  test do
     system "#{bin}/wukong", "--help"
  end
end
