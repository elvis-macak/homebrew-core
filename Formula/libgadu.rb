class Libgadu < Formula
  desc "Library for ICQ instant messenger protocol"
  homepage "http://libgadu.net/"
  url "https://github.com/wojtekka/libgadu/releases/download/1.12.2/libgadu-1.12.2.tar.gz"
  sha256 "28e70fb3d56ed01c01eb3a4c099cc84315d2255869ecf08e9af32c41d4cbbf5d"

  bottle do
    cellar :any
    sha256 "c6f3fdde053bd774c477223aed06790665b7dadefadb792d62d1dd17937da628" => :sierra
    sha256 "bbe510634d41fbd356ee7775ce360b2a9f9429a8e39231d47fa68167aaeeca1f" => :el_capitan
    sha256 "4c611f1aa42aa415e0e8b3880a17536b37d3e5760ec0b8e7f81039d65c032d74" => :yosemite
    sha256 "a125d428b27a849db24ce63ece66eb43de5b5ba5fb092e464628ba0b320872f4" => :mavericks
    sha256 "77d315541e0bb563fdf9185e32a3bfb4661bbce4781853e1d66c9802ec7599e2" => :mountain_lion
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--without-pthread"
    system "make", "install"
  end
end
