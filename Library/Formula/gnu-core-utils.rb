require 'formula'

class GnuCoreUtils < Formula
  url 'http://ftp.gnu.org/gnu/coreutils/coreutils-8.9.tar.gz'
  homepage 'http://www.gnu.org/software/coreutils/'
  md5 '36909ae68840d73a800120cf74af794a'
  version '8.9'

  def install
    system "./configure",  "--prefix=#{prefix}"
    system 'make'
    system "make install"
  end
end
