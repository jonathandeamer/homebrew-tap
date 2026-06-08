class Yeti < Formula
  desc "Ski down a mountain until the yeti finds you"
  homepage "https://github.com/jonathandeamer/yeti"
  url "https://github.com/jonathandeamer/yeti/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "510df2b16367ae37915aaf77e9e213960f9abde39200939e5c34ef34ee423095"
  license any_of: ["MIT", "CC0-1.0"]

  depends_on "ncurses"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_predicate bin/"yeti", :exist?
  end
end
