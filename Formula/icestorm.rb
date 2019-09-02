class Icestorm < Formula
    desc "Reverse-engineered Lattice iCE40 FPGAs Bitstream Documentation"
    homepage "http://www.clifford.at/icestorm/"
    url "https://github.com/cliffordwolf/icestorm/archive/master.tar.gz"
    sha256 "053cda870e3f467863d433606d91697443051ba59eeb32c772345552d89525e6"
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