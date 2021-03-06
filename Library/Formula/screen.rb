require 'formula'

class Screen < Formula
  url 'http://ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz'
  homepage 'http://www.gnu.org/software/screen/'
  md5 '8506fd205028a96c741e4037de6e3c42'
  version '4.00.03'
  #head 'git://git.savannah.gnu.org/screen.git', :branch => 'master'

  def patches
    ["http://trac.macports.org/raw-attachment/ticket/20862/screen-4.0.3-snowleopard.patch"]
  end


  def install
    system "./configure",  "--prefix=#{prefix}", "--enable-colors256", "--mandir=#{man}", "--infodir=#{info}"
    system "make install"
  end
end
