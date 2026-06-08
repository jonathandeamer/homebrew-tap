class Yeti < Formula
  desc "Ski down a mountain until the yeti finds you"
  homepage "https://github.com/jonathandeamer/yeti"
  url "https://github.com/jonathandeamer/yeti/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "54e415ba2701d217e26d0030416f5358f0b0cfcc3c4e150dfa1aa9c79689a2b8"
  license any_of: ["MIT", "CC0-1.0"]

  depends_on "ncurses"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_predicate bin/"yeti", :exist?
  end
end
