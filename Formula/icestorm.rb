class Icestorm < Formula
    desc "Reverse-engineered Lattice iCE40 FPGAs Bitstream Documentation"
    homepage "http://www.clifford.at/icestorm/"
    url "https://github.com/YosysHQ/icestorm/tarball/83b8ef947f77723f602b706eac16281e37de278c"
    head "https://github.com/YosysHQ/icestorm"
    version "0.1.0-83b8ef947f77723f602b706eac16281e37de278c"
    sha256 "04c98c29026fc2e8ae54497574529d0f7f62ed9d7263c6f159905cdf48712375"

    depends_on "python"
    depends_on "libftdi"
    depends_on "yosys"
    depends_on "pkg-config" => :build

    def install
        system "make", "-j#{`sysctl -n hw.logicalcpu`.chomp}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
