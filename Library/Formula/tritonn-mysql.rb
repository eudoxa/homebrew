require 'formula'

class TritonnMysql <Formula
  version '1.0.8'
  url 'http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Ftritonn%2F28539%2Fmysql-5.0.51-tritonn-1.0.8.tar.gz'
  homepage 'http://qwik.jp/tritonn/about_en.html'
  md5 '6df954a4fa77eb63671dff7770f8f733'

  depends_on 'pkg-config' => :build
  depends_on 'mecab'
  depends_on 'senna'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--with-senna", "--with-mecab",
                          "--mandir=#{man}", "--infodir=#{info}"
    system "make install"
  end
end
