class Icestorm < Formula
    desc "Reverse-engineered Lattice iCE40 FPGAs Bitstream Documentation"
    homepage "http://www.clifford.at/icestorm/"
    url "https://github.com/cliffordwolf/icestorm/archive/master.tar.gz"
    sha256 "b0537fb173e6af20f88b0bc2ed0a75467662ba04af3096012c07c59c84afe09d"
    head "https://github.com/cliffordwolf/icestorm"
    version "0.1.0"

    depends_on "libftdi"
    depends_on "yosys"
    depends_on "pkg-config" => :build

    def install
        system "make", "-j#{`sysctl -n hw.logicalcpu`.chomp}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
