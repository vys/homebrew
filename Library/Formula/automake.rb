require 'formula'

class Automake < Formula
  url 'http://ftp.gnu.org/gnu/automake/automake-1.11.1.tar.bz2'
  homepage 'http://www.gnu.org/software/automake/'
  md5 'c2972c4d9b3e29c03d5f2af86249876f'

  depends_on 'autoconf'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
