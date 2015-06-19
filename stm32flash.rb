require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20141004"
  url "http://tcpdiag.dl.sourceforge.net/project/stm32flash/stm32flash-0.4.tar.gz"
  sha1 "0c82289e20a8f120d7524f63d725ce623f1b8136"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
    system "install", "-m", "644", "stm32flash.1", "#{prefix}/../../../share/man/man1"
  end
end
